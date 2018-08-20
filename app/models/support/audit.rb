module Support
  class Audit < Audited::Audit
    self.table_name = 'extranet.audits'
  end
end