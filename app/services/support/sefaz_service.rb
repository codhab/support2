require 'net/http'
require 'json'
require 'logging'

module Support
  class SefazService
    
    BASE_URL = 'http://publica.agnet.fazenda.df.gov.br'

    def self.find_by_cpf(cpf)
      uri  = URI.parse("#{BASE_URL}/FichaImovel/RecuperarRelacaoImoveisPorCPF")
      http = Net::HTTP.new(uri.host, uri.port)
      body = {"cpf" => "#{cpf}".unformat_cpf}

      request = Net::HTTP::Post.new(uri.request_uri, {'Content-Type' => 'application/json'})
      request.body = body.to_json

      response = http.request(request)
      
      JSON.parse(response.body)
    rescue => e
      logger = Logging.logger(STDOUT)
      logger.warn "Erro ao acessar serviço: #{e}"
    end
    
    def self.find_by_code(code)
      url  = "#{BASE_URL}/FichaImovel/RecuperarFichaCadastralImovel"
    end
    
  end
end