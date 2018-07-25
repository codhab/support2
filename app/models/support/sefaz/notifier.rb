require_dependency 'support/application_record'

module Support
  module Sefaz
    class Notifier < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.sefaz_notifiers'
    end
  end
end
