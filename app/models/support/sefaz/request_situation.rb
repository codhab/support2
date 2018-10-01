require_dependency 'support/application_record'

module Support
  module Sefaz
    class RequestSituation < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.sefaz_request_situations'

      audited
    end
  end
end
