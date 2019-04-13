class CreateSupportPivotalUsers < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.pivotal_users' do |t|
      t.string  :username
      t.string  :code
      t.string  :name
      t.string  :cpf
      t.date    :born, default: nil
      t.integer :born_uf_id
      t.integer :gender_id
      t.string  :avatar
      t.string  :branch_line
      t.string  :curriculum
      t.string  :email
      t.string  :private_email

      t.boolean :status, default: true
      t.boolean :administrator, default: false

      t.string  :password
      t.integer :job_id

      t.integer :civil_state_id
      t.string  :birth_place

      t.string  :telephone
      t.string  :celphone

      t.string  :mobile_user_token
      t.string  :mobile_push_token

      t.integer :sector_id

      t.string   :remember_token, default: nil
      t.datetime :remember_token_expires_at, default: nil

      t.boolean  :external, default: false
      t.text     :external_observation

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end

    add_index 'extranet.pivotal_users', :username, unique: true
  end
end
