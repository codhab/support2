module Support
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
    
    default_scope { where(deleted: false) }
    
    scope :status_active, -> { where(status: true) }

    def destroy
      self.update(deleted: true, deleted_at: Time.now)
    end

    private 

    def call_presenter(presenter_class, model, view = nil)
      presenter_class.constantize.new(model, view)
    end
  end
end
