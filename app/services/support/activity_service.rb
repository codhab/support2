module Support
  class ActivityService # :nodoc:
    def initialize(cadastre)
      @cadastre = cadastre
    end

    def create(options = {})
      activity = Support::Candidate::CadastreActivity.new
      activity.activity_type_id = options[:type_id] ||= nil

      activity.computer    = options[:computer] ||= false
      activity.user_id     = options[:user_id]  ||= nil
      activity.title       = options[:title]    ||= nil
      activity.justify     = options[:justify]  ||= nil
      activity.date        = options[:date]     ||= Date.current
      activity.cadastre_id = @cadastre.id

      activity.justify_document = options[:justify_document]   ||= nil

      activity.save
    rescue Exception => e
      p e
    end

    def cadastre_activity(title, justify, type_id, user)
      self.create(type_id: type_id, computer: true, title: title, justify: justify, user_id: user)
    end
  end
end
