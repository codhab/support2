module Support
  module DateUtility
    def formatted_datetime
      self.strftime("%d/%m/%Y %H:%M")
    end
    
    def formatted_date
      self.strftime("%d/%m/%Y")
    end
  end
end