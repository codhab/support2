module Support
  module Address
    class Booking
      include ActiveModel::Model
      attr_accessor :cpf, :observation, :cadastre, :unit_id
    end
  end
end
