require_dependency 'support/application_record'

module Support
  module Entity
    class Cadastre < ApplicationRecord
      self.table_name = 'sihab.entity_cadastres'

      has_many :situations, class_name: 'Support::Entity::Situation', foreign_key: :cadastre_id

      audited

      def presenter
        call_presenter('Support::Entity::CadastrePresenter', self)
      end
    end
  end
end
