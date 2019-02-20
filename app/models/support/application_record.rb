module Support
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
    
    default_scope { where(deleted: false) }
    
    scope :status_active, -> { where(status: true) }
    scope :not_deleted,   -> { where(deleted: false) }

    # => Solucao baseada em 
    # https://singlebrook.com/2015/12/18/how-to-carefully-remove-a-default-scope-in-rails/
    # Associations nao possui poder de remover default scope da heranca
    scope :undelete_scope, -> { unscope(where: :deleted) }

    def destroy
      self.deleted    = true
      self.deleted_at = Time.now
      self.save(validate: false)
    end

    private 
    
    def call_presenter(presenter_class, model, view = nil)
      presenter = presenter_class.constantize.new(model, view)
      block_given? ? yield(presenter) : presenter
    end

    def call_policy(policy_class, model)
      policy_class.constantize.new(model)
    end
  end
end
