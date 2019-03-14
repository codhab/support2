module Support
  module BooleanUtility
    def status_format
      self ? 'Ativo' : 'Inativo'
    end

    def boolean_format
      self ? 'Sim' : 'Não'
    end
  end
end
