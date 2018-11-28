module Attendance
  class TicketService
    
    attr_accessor :ticket

    def initialize(ticket)
      @ticket = ticket
    end

    def set_cadastre_mirror!
      cadastre = @ticket.cadastre
      service  = Candidate::CadastreService.new(cadastre)

      service.create_mirror!

      ticket.update(cadastre_mirror_id: service.cadastre_mirror.id)
    rescue StandarError => e
      p e
    end

  end 
end