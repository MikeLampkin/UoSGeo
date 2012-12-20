class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.boolean :admin
      t.boolean :active
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :district_id
      t.string :integer

      t.timestamps
    end
  end
end
