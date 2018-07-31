module Support
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
    
    default_scope { where(deleted: false) }
    
    def destroy
      self.update(deleted: true, deleted_at: Time.now)
    end
  end
end
