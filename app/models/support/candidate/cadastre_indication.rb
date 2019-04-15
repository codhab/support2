module Support
  module Candidate
    class CadastreIndication < ApplicationRecord
      self.table_name = 'sihab.candidate_cadastre_indications'

      audited

      belongs_to :enterprise, required: false, class_name: 'Support::Address::Enterprise'
    end
  end
end
