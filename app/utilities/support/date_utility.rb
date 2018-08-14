module Support
  module DateUtility
    def formatted_datetime
      self.strftime("%d/%m/%Y %H:%M")
    end
    
    def formatted_date
      self.strftime("%d/%m/%Y")
    end
    
    def formatted_time
      self.strftime("%H:%M")
    end
  end
end