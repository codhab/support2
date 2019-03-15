require_dependency 'support/application_record'

module Support
  module Social
    class CadastreSchedule  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_cadastre_schedules'

      enum situation_id: ['iniciado', 'aguardando', 'cancelado', 'finalizado', 'visita realizada']
    end
  end
end
