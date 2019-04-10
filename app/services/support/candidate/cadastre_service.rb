module Support
  module Candidate
    class CadastreService

      attr_accessor :cadastre_id, :cadastre_mirror_id, :cadastre_mirror

      def initialize(cadastre_id: nil, cadastre_mirror_id: nil)
        @cadastre_id        = cadastre_id
        @cadastre_mirror_id = cadastre_mirror_id
      end

      def create_mirror
        @cadastre = Support::Candidate::Cadastre.find_by(id: @cadastre_id)
        @cadastre_mirror = @cadastre.cadastre_mirrors.new

        @cadastre_mirror.attributes.each do |key, value|
          unless %w(id created_at updated_at deleted deleted_at).include?(key)
            if @cadastre.attributes.has_key?(key)
              @cadastre_mirror[key] = @cadastre[key]
            end
          end
        end

        @cadastre_mirror.status = true
        @cadastre_mirror.save(validate: false)
        @cadastre_mirror_id = @cadastre_mirror.id

        @cadastre.dependents.each do |dependent|
          dependent_mirror = @cadastre_mirror.dependent_mirrors.new

          dependent_mirror.attributes.each do |key, value|
            unless %w(id created_at updated_at deleted deleted_at).include?(key)
              if dependent.attributes.has_key?(key)
                dependent_mirror[key] = dependent[key]
              end
            end
          end

          dependent_mirror.status = true
          dependent_mirror.save(validate: false)
        end

      rescue StandardError => e
        puts "CadastreService: #{e}"
      end

      # => Pontuar candidato
      def score!
        return false if @cadastre_mirror.nil?

        service = Support::Candidate::ScoreService.new(cadastre_mirror_id: @cadastre_mirror.id)
        service.scoring_cadastre!
      rescue StandardError => e
        p e
      end

    end
  end
end
