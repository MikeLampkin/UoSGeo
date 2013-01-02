class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :user_email
      t.integer :user_id
      t.integer :qanda_id
      t.string :my_answer
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean :lock

      t.timestamps
    end
  end
end
