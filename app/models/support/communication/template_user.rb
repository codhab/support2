require_dependency 'support/application_record'

module Support
  module Communication
    class TemplateUser < ApplicationRecord
      self.table_name = 'extranet.communication_template_users'
    end
  end
end
