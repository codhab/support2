module Support
  class ApplicationPolicy < SimpleDelegator
    def initialize(model, view = nil)
      super(model)
    end
  end
end