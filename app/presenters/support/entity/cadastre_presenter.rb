require_dependency 'support/application_presenter'
module Support
  module Entity
    class CadastrePresenter < ApplicationPresenter # :nodoc:
      
      def current_situation_name
        situations.order(created_at: :asc).last.situation_type.name rescue nil
      end

    end
  end
end