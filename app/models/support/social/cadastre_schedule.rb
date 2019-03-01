require_dependency 'support/application_record'

module Support
  module Social
    class CadastreSchedule  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_cadastre_schedules'
    end
  end
end
