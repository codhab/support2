require 'rails_helper'

describe 'Address::BookingSpec' do
  context 'Validações' do

    it 'Reservar imóvel vago' do
      @service = Support::Address::BookingService.new(1,223823,1)
      @return = @service.book!("Teste")
      expect(@return).to be true
    end
  end
end
