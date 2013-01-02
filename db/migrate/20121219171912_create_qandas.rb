class CreateQandas < ActiveRecord::Migration
  def change
    create_table :qandas do |t|
      t.string :question
      t.string :answer
      t.string :image
      t.integer :position

      t.timestamps
    end
  end
end
