module Support
  module TimeUtility

    def format_datetime
      self.strftime("%d/%m/%Y %H:%M")
    end
    
    def format_date
      self.strftime("%d/%m/%Y")
    end
    
    def format_time
      self.strftime("%H:%M") 
    end
  end
end