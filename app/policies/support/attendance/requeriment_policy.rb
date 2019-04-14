module Support
  module Attendance
    class RequerimentPolicy

      attr_accessor :cpf, :category_id

      def initialize(cpf)
        @cpf = cpf 
        @category_id = []
      end

      def not_allowed?
        ::Support::Attendance::Requeriment.where(cpf: cpf, cancelled: false, attendant_answer: false).present?
      end

      def allowed_categories
        cadastre     = ::Support::Candidate::Cadastre.find_by(cpf: cpf)
        requeriments = ::Support::Attendance::Requeriment.where(cpf: cpf)

        return nil if requeriments.where(cancelled: false, attendant_answer: false).present?
            
        if cadastre.nil?
          outside_categories = ::Support::Attendance::RequerimentCategory.where(status: true, outside_cadastre: true).map(&:id)
          @category_id << outside_categories if outside_categories.present?
        else
          ::Support::Attendance::RequerimentCategory.where(status: true, outside_cadastre: false).each do |internal|
            if internal.program_id.include?(cadastre.presenter.current_program_id)
              @category_id << internal.id
            end  

            if internal.situation && internal.situation_id.include?(cadastre.presenter.current_situation_id)
              @category_id << internal.id
            end
          end
        end

        ::Support::Attendance::RequerimentCategory.where(id: @category_id)
      end
    end

  end
end