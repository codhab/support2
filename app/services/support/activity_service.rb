module Support
  class ActivityService
    
    def self.create(options = {})
      activity = Support::Candidate::ActivityCadastre.new
      activity.activity_type_id = options[:type_id] ||= nil

      activity.computer = options[:computer] ||= false
      activity.user_id  = options[:user_id]  ||= nil
      activity.title    = options[:title]    ||= nil
      activity.justify  = options[:justify]  ||= nil
      activity.date     = options[:date]     ||= Date.current

      activity.justify_document   = options[:justify_document]   ||= nil

      activity.save
    rescue Exception => e
      p e
    end

    def self.cadastre_activity(title, justify, type_id)
      self.create(type_id: type_id, computer: true, title: title, justify: justify)
    end

  end
end