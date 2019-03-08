require 'rails_helper'

describe 'Address::BookingSpec' do
  context 'Validações' do
    it 'Reservar imóvel vago' do
      @booking = Support::Address::Booking.new(cpf: '71263063187', observation: 'teste', unit_id: 223823)
      expect(@booking.valid?).to be true
    end
  end
end
