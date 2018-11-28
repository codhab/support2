module Candidate
  class CadastreService

    attr_accessor :cadastre, :cadastre_mirror

    def initialize(cadastre, cadastre_mirror = nil)
      @cadastre = cadastre
      @cadastre_mirror = cadastre_mirror
    end

    # => Realizar criacao de cadastro espelho
    def create_mirror!
      @cadastre_mirror = @cadastre.cadastre_mirrors.new

      @cadastre_mirror.attributes.each do |key, value|
        unless %w(id created_at updated_at deleted deleted_at).include?(key)
          if @cadastre.attributes.has_key?(key)
            cadastre_mirror[key] = @cadastre[key] 
          end
        end 
      end

      @cadastre_mirror.save(validate: false)

      @cadastre.dependents.each do |dependent|
        dependent_mirror = @cadastre_mirror.dependent_mirrors.new

        dependent_mirror.attributes.each do |key, value|
          unless %w(id created_at updated_at deleted deleted_at).include?(key)
            if dependent.attributes.has_key?(key)
              dependent_mirror[key] = dependent[key]
            end
          end
        end

        dependent_mirror.save(validate: false)
      end

    rescue StandardError => e
      puts e
    end

    # => Pontuar candidato
    def score!
      return false if @cadastre_mirror.nil?

      service = Candidate::ScoreService.new(cadastre_mirror_id: @cadastre_mirror.id)
      service.scoring_cadastre!
    rescue StandardError => e
      p e
    end

  end
end