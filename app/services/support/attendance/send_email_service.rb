module Support
  module Attendance
    class SendEmailService
      
      attr_accessor :one_signal_key, :one_signal_secret

      def initialize
        @one_signal_key = 54546
        @one_signal_secret = 546
      end

      def send_email(args = {})
        from   = args[:from] ||= "Sem remetente"
        title   = args[:title] ||= "Sem título"
        content = args[:content] ||= "Sem conteúdo"
        
        # TODO: Inserir metódo do one signal

      rescue StandarError => e 
        p "SendEmailService: #{e}"
      end
      
    end
  end
end