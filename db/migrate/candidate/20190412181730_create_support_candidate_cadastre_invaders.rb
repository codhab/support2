class CreateSupportCandidateCadastreInvaders < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastre_invaders' do |t|
      t.string  :name
      t.string  :cpf
      t.text    :address
      t.integer :city_id
      t.string  :lat
      t.string  :lng
      t.text    :observation
      t.integer :user_id
      t.date    :date

      t.timestamps
    end
  end
end
