module Attendance
  class TicketService
    
    attr_accessor :ticket_id

    def initialize(ticket_id)
      @ticket_id = ticket_id
    end

    def set_cadastre_mirror!
      ticket   = Support::Attendance::Ticket.find_by(@ticket_id)
      service  = Candidate::CadastreService.new(ticket.cadastre_id)

      service.create_mirror!

      ticket.update(cadastre_mirror_id: service.cadastre_mirror.id)
    rescue StandarError => e
      p e
    end

  end 
end