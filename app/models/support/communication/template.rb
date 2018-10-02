require_dependency 'support/application_record'

module Support
  module Communication
    class Template < ApplicationRecord
      self.table_name = 'extranet.communication_templates'      
    end
  end
end
