require_dependency 'support/application_record'

module Support
  module Attendance
    class Ticket < ApplicationRecord
      self.table_name = 'sihab.attendance_tickets'

      belongs_to :cadastre, required: false
      belongs_to :cadastre_mirror, required: false
    
      has_many :ticket_steps
      
      # internal é quando o atendimento é listado somente por dentro da codhab
      scope :internal, -> { where(internal: true) }
      scope :no_internal, -> { where(internal: false) }

      # situation_types
      # 1 => pendente com candidato
      # 2 => pendente com atendente
      # 3 => pendente com supervisor
      # 4 => deferido
      # 5 => indeferido
      # 6 => cancelado
      scope :closed, -> {
        where(situation_type_id: [4,5,6])
      }

      scope :opened, -> {
         where(situation_type_id: [1,2,3]).no_internal
      }
      
    end
  end
end
