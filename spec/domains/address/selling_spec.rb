require 'rails_helper'

describe 'Address::SeelingSpec' do
  context 'Validações' do
    it 'Tentar distribuir imóvel para candidato sem situação processual' do
      @service = Support::Address::SellingService.new(1,223823,1)
      @return = @service.sell!("Teste", true, false)
      expect(@return).not_to be true
    end

    it 'Distruibuir imóvel reservado' do
      @service = Support::Address::SellingService.new(2,223823,1)
      @return = @service.sell!("Teste", true, false)
      expect(@return).to be true
    end
  end
end
