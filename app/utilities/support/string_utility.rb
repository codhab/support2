
require 'openssl'

module Support
  module StringUtility

    def format_empty
      (self.empty? || self.blank?) ? "Sem informação" : self
    end

    def percent_string_of(n)
      if n == 0
        "0 %"
      else
        "#{(self.to_f / n.to_f * 100.0).round(2)} %"
      end
    end

    def format_cpf
      unless (self.empty? || self.blank?)
        @cpf  = self
        @cpf  =~ /(\d{3})\.?(\d{3})\.?(\d{3})-?(\d{2})/
        @cpf  = "#{$1}.#{$2}.#{$3}-#{$4}"
      else
        self.format_empty
      end
    end

    def unformat_cpf
      self.to_s.gsub('-','').gsub('.','')
    end

    def format_obfuscator_cpf
      @cpf  = self
      @cpf  =~ /(\d{3})\.?(\d{3})\.?(\d{3})-?(\d{2})/
      @cpf  = "***.***.#{$3}-#{$4}"
    end

    def format_cnpj
      # => 00.000.000/0000-00
      unless (self.empty? || self.blank?)
        @cnpj  = self
        @cnpj  =~ /(\d{2})\.?(\d{3})\.?(\d{3})\.?(\d{4})-?(\d{2})/
        @cnpj  = "#{$1}.#{$2}.#{$3}/#{$4}-#{$5}"
      else   
        self.format_empty
      end 
    end

    def unformat_cnpj
      self.gsub('.','').gsub('-','').gsub('/','')
    end

    def underline_array
      self.split('_')
    end


    def unformat_phone
      self.gsub('(','').gsub(')','').gsub('-','')
    end


    def encrypt(key)
      cipher = OpenSSL::Cipher::Cipher.new('aes-256-cbc').encrypt
      cipher.key = Digest::MD5.hexdigest key
      s = cipher.update(self) + cipher.final

      s.unpack('H*')[0].upcase
    end

    def decrypt(key)
      cipher = OpenSSL::Cipher::Cipher.new('aes-256-cbc').decrypt
      cipher.key = Digest::MD5.hexdigest key
      s = [self].pack("H*").unpack("C*").pack("c*")

      cipher.update(s) + cipher.final
    end

  end
end