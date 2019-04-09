module Support
  module Address
    class UnitService
      
      attr_accessor :unit_id, :errors

      def initialize(unit_id, cadastre_id = nil)
        @unit_id     = unit_id
        @cadastre_id = cadastre_id

        @errors  = []
      end

      def booking
        @cadastre = Support::Candidate::Cadastre.find_by(id: cadastre_id)
        @unit     = Support::Address::Unit.find_by(id: @unit_id)

        if @cadastre.nil?
          @errors << ":cadastre_id não encontrado;"
          return false
        end 
        
        if @unit.nil?
          @errors << ":unit_id não encontrado;"
          return false 
        end


        unit_situation = Support::Address::UnitSituation.new
        unit_situation.situation_type_id = 5
        unit_situation.cadastre_id       = @cadastre.id
        unit_situation.unit_id           = @unit.id
        unit_situation.save

        cadastre_situation = @cadastre.cadastre_situations.new
        cadastre_situation.situation_type_id = 5
        cadastre_situation.unit_id           = @unit.id
      end

      def distribute
      end

      def distract
      end

    end
  end
end
