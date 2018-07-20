class CreateSupportCplParticipants < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.cpl_participants' do |t|
      t.string   :name
      t.string   :cnpj
      t.string   :cpf
      t.string   :email
      t.string   :telephone
      t.string   :cell_phone
      t.string   :password
      t.string   :token
      t.datetime :token_validate
      t.datetime :last_signed_at
      t.boolean  :status, default: true
      t.boolean  :deleted, default: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
