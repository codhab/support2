module Support
  class Audit < Audited::Audit
    self.table_name = 'extranet.audits'

    def staff
      if self.user_type == 'Support::Person::Staff'
        Support::Person::Staff.find(self.user_id)
      else 
        nil 
      end 
    rescue 
      nil 
    end

    def action_name
      case self.action
      when 'update'
        'Atualização'
      when 'create'
        'Criação'
      when 'delete'
        'Remoção'
      end
    end

  end
end