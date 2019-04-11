module Support
  module Attendance
    class PushNotificationService
      
      attr_accessor :one_signal_key, :one_signal_secret

      def initialize
        @one_signal_key = 54546
        @one_signal_secret = 546
      end

      def send_push(args = {})
        title   = args[:title] ||= "Sem título"
        content = args[:content] ||= "Sem conteúdo"
        
        # TODO: Inserir metódo do one signal

      rescue StandarError => e 
        p "PushNotificationService: #{e}"
      end

    end
  end
end