require_dependency 'support/application_record'

module Support
  module Social
    class Cadastre  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_cadastres'

      after_create :set_order
      after_destroy :set_order

      def set_order
        if Support::Social::Cadastre.all.count > 0
          Support::Social::Cadastre.where(city_id: self.city_id).order(created_at: :asc).each_with_index do |schedule, i|
            schedule.order = i + 1
            schedule.save(validate: false)
          end
        else
          self.order = 1
        end
      end
    end
  end
end
