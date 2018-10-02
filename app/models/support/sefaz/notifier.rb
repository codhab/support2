require_dependency 'support/application_record'

module Support
  module Sefaz
    class Notifier < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.sefaz_notifiers'

      audited
    end
  end
end
