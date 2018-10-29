module Support
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
    
    default_scope { where(deleted: false) }
    
    scope :status_active, -> { where(status: true) }
    scope :not_deleted,   -> { where(deleted: false) }

    def destroy
      self.deleted    = true
      self.deleted_at = Time.now
      self.save(validate: false)
    end

    private 

    def call_presenter(presenter_class, model, view = nil)
      presenter_class.constantize.new(model, view)
    end
  end
end
