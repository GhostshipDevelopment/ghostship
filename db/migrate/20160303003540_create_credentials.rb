class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.integer :service_id
      t.text :public_key
      t.text :private_key
      t.text :identifier

      t.timestamps null: false
    end
  end
end
