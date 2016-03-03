class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :address
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
