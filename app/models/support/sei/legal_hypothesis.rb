require_dependency 'support/application_record'

module Support
  module Sei
    class LegalHypothesis < ApplicationRecord
      self.table_name = 'extranet.sei_legal_hypotheses'
    end
  end
end
