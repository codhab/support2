require_dependency 'support/application_record'

module Support
  module Person
    class StaffMirror < ApplicationRecord
      self.table_name = 'extranet.staff_mirrors'
    end
  end 
end
