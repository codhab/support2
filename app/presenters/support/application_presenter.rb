module Support
  class ApplicationPresenter < SimpleDelegator
    def initialize(model, view = nil)
      @view = view
      super(model)
    end

    def h
      @view
    end

    def method_missing(m, *args, &block)
      object.send(m, *args, &block)
    end
  end
end