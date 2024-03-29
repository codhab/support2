module Support
  module Candidate
    class ScoreService # :nodoc:
      # => 09 de agosto de  2016

      # => Esta pontuação é baseada no DECRETO Nº 220 de 30 de outubro de 2012, do governo do Agnelo Queiroz
      # Inicia-se a explicação da fórmula na página 4
      # => Este algoritmo foi implementado em 2012 em .net usando Webforms, o mesmo foi implementado errado.
      # Onde o programador não seguiu a regra do PNL corretamente, isso fez com que todos habilitados de 2012
      # não recebesse pontuação correta em tempo_de_lista, isso não foi corrigido
      # => Para maior detalhamento somente verificando por extrato de dados e executando esta classe

      # => toda pontuação é baseada em mirrors
      attr_accessor :cadastre_mirror

      attr_accessor :min_salary, :dsp_value, :created_at_value, :pml

      # => PMB são os pontos máximos de tempo de residência no Distrito Federal.
      # =>1.1. Tempo de residência no Distrito Federal: 4.000 pontos, distribuídos diretamente proporcional
      # ao tempo apurado com base nos dados cadastrais;
      PMB = 4000

      # => PMR são os pontos máximos de renda familiar per capita.
      # => 1.5. Renda familiar mensal bruta per capita: 500 pontos, distribuídos inversamente proporcional
      # ao valor da renda mensal bruta per capita apurada com base nos dados cadastrais;
      PMR = 500

      # => DIC é a data de início do cadastro = 01/01/1958.
      DIC = Date.parse('01/01/1958')

      # => DIL é a data de início das inscrições em Programas Habitacionais = 01/01/1993.
      DIL = Date.parse('01/01/1993')

      def initialize(options = {})
        @cadastre_mirror = Support::Candidate::CadastreMirror.find(options[:cadastre_mirror_id])
        
        return nil if @cadastre_mirror.nil?

        # => SAL_MIM é o valor do salário mínimo na data de geração dos pontos.
        @min_salary        = options[:min_salary]   ||= ::Support::Common::Config.find_by('SAL_MIN').value

        # => DSP é a data de geração dos pontos.
        @dsp_value         = options[:dsp]          ||= proc_dsp

        # => DT_INSCRICAO(i) é a data de inscrição do candidato em Programas Habitacionais.
        @created_at_value  = options[:created_at]   ||= @cadastre_mirror.cadastre.created_at.strftime("%Y-%m-%d")

        # => PML são os pontos máximos de tempo de inscrição em Programas Habitacionais.
        # => 1.2. Tempo de inscrição em Programas Habitacionais no DF: 1.500 pontos, distribuídos de acordo
        # com o tempo apurado com base nos dados cadastrais;
        @pml               = options[:pml]          ||= 1500
      end

      def scoring_cadastre!
        total_score = income_score + special_dependent_score + dependent_score + timelist_score + timebsb_score

        # => Verificacao se o candidato possui a aplicação de pontuação adicional ao ser pontuado
        if @cadastre_mirror.cadastre.cadastre_additional_scores.present?
          @cadastre_mirror.cadastre.cadastre_additional_scores.each do |add_score|
            total_score += add_score.additional_score.value 
          end
        end

        # = > Forma antiga de aplicar os 10 mil pontos
        # total_score += 10_000.0 if @cadastre_mirror.cadastre.scoring
        
        { total: total_score.round(10), income_score: income_score.round(10), special_dependent_score: special_dependent_score.round(10),
         dependent_score: dependent_score.round(10), timelist_score: timelist_score.round(10), timebsb_score: timebsb_score.round(10) }
      end

      # => MB_11 recebe valor igual a um (1) se o candidato teve classificação no Morar Bem em 2011,
      # ou recebe valor igual a zero (0) se o candidato não teve classificação no Morar Bem em 2011.
      def mb_11
        @cadastre_mirror.cadastre.cadastre_pontuations.where(code: 20110801).present? ? 1 : 0
      end

      # => DSP é a data de geração dos pontos.
      # => Deverá ser validado para que o mesmo seja coerente com a pontuação dos candidatos
      def proc_dsp
        # Refatorar para rodar anualmente nesta mesma data
        # Todo ano a data deverá ser atualizada com o ano corrente
        # A data base é ano-04-03
        
        year = Date.today.year

        last_date_year    = Date.parse("#{(year.to_i - 1)}-04-03")
        current_date_year = Date.parse("#{year}-04-03")

        current_year = (Date.today < current_date_year) ? last_date_year : current_date_year
        current_date_year.strftime('%Y-%m-%d')
      end

      def dsp
        Date.parse(@dsp_value) rescue nil
      end

      # => data de inscrição do cadastre_mirror
      def created_at
        # Súmula DIMOB Nº 300.000. /2017
        Date.parse(@created_at_value) rescue nil
      end

      # => MADIL são os pontos médios anteriores a data de início das inscrições.
      # => MADIL = ( PML + PML * (DSP – DIL) / (DSP – DIC) ) / 2
      def madil
        (@pml + @pml * ((dsp - DIL).to_i) / ((dsp - DIC).to_i)) / 2
      end

      # => f) PT_RENDA(i) = PMR* (SAL_MIN * 12 – (R_TOTAL(i) / (DP(i)+1))) / (SAL_MIN * 12)
      def income_score
        income_mirror = @cadastre_mirror.family_income.present? ? @cadastre_mirror.family_income : 0
        (PMR * (@min_salary * 12 - (income_mirror/ (@cadastre_mirror.dependent_mirrors.count + 1))) / (@min_salary * 12)).round(10)
      end

      # =>  PT_MB_ESP(i) = SE (MB_ESP(i) >= 4, 300*4 + 300*CH_ESP(i), SENÃO (MB_ ESP(i)*300 + 300*CH_ESP(i))
      # MB_ESP(i) é o número de membros da família do candidato com condições especiais.
      # CH_ESP(i) recebe valor igual a um (1) se o candidato tiver condição especial, ou recebe valor igual a zero (0) se o candidato não tiver condição especial.
      def special_dependent_score
        current_special_status    = (@cadastre_mirror.special_condition || @cadastre_mirror.presenter.age >= 60) ? 1 : 0
        special_dependents_count  = 0

        # => .each para
        @cadastre_mirror.dependent_mirrors.each do |dependent|
          if dependent.special_condition || dependent.presenter.age >= 60
            special_dependents_count += 1
          end
        end

        if special_dependents_count >= 4
          1200 + (300 * current_special_status)
        else
          (special_dependents_count * 300) + (600 * current_special_status)
        end
      end

      # => PT_DP(i) = SE (DP(i) >= 5, 5*500, SENÃO(DP(i)*500))
      def dependent_score
        dependent_count = @cadastre_mirror.dependent_mirrors.count
        (dependent_count >= 5) ? 2500 : (dependent_count * 500)
      end

      # =>  PT_LISTA(i) = SE (E (DT_CHEGADA_DF(i) < DIL, DT_INSCRICAO(i) = DIL), MADIL,
      # SENÃO (PML*(DSP – DT_INSCRICAO(i)) / (DSP – DIC) + MB_11*700))
      def timelist_score
        #=> DATA REFERENTE PARA CALCULO DE 2012 - 01/10/2012 - NAO PERDER ESSA DATA
        # UNS MANE JA PERDERAM, FAÇA O FAVOR, VALEU
        total = 0

        arrival_df = @cadastre_mirror.arrival_df.present? ? @cadastre_mirror.arrival_df : (Date.current - 1.day)

        if arrival_df < DIL && created_at == DIL
          total = madil
        else
          total = @pml * (dsp - created_at).to_f / (dsp - DIC).to_f + mb_11 * 700
        end

        #=> O tempo de lista não deve exceder o teto demonstrado no decreto de 1500
        total = total > 1500 ? 1500 : total
      end
      # => a) PT_BSB(i) = PMB * (DSP – DT_CHEGADA_DF(i)) / (DSP - DIC)
      def timebsb_score
        arrival = @cadastre_mirror.arrival_df.present? ? @cadastre_mirror.arrival_df : (Date.current - 1.day)
        arrival_df = arrival >= DIC ? arrival : DIC
        PMB * (dsp - arrival_df).to_f / (dsp - DIC).to_f
      end
    end
  end
end
