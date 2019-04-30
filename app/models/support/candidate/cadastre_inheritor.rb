require_dependency 'support/application_record'

module Support
  module Candidate
    class  CadastreInheritor < ApplicationRecord
      self.table_name = 'sihab.candidate_cadastre_inheritors'
      
      belongs_to :cadastre, class_name: "Support::Candidate::Cadastre", foreign_key: :cadastre_id

      validates :cpf, cpf: true, allow_blank: true
      
      audited
    end
  end
end
