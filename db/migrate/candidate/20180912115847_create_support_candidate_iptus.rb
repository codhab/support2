class CreateSupportCandidateIptus < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_iptus' do |t|
      t.string :name
      t.string :cpf
      t.string :registration
      t.string :city
      t.string :address
      t.string :kind_realty
      t.string :kind_search
      t.string :year
      t.string :realty_codhab

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
