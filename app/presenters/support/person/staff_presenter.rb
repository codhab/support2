require_dependency 'support/application_presenter'

module Support
  module Person
    class StaffPresenter < ApplicationPresenter
     
      def short_name
        short = self.name.split(' ')
        "#{short[0]} #{short[-1]}"
      end
      
    end
  end
end