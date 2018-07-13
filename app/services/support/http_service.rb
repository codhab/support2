require 'net/http'

module Support
  class HttpService 
    attr_accessor :http, :url, :data

    def initialize(url, path, ssl = true)
      @http = Net::HTTP.new(url, 443)  
      @http.use_ssl = ssl
      @data = JSON.parse http.get(path).body
    end
    
  end
end