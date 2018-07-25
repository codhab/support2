require_dependency 'support/application_record'

module Support
  module Sefaz
    class RequestType < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.sefaz_request_types'
    end
  end
end
