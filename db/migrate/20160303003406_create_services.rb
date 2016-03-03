class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :path
      t.integer :node_id

      t.timestamps null: false
    end
  end
end
