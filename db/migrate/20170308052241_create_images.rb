class CreateImages < ActiveRecord::Migration
  
  def change
    create_table :images do |t|
      t.string :url
      t.string :public_id
      t.integer :species_id

      t.timestamps null: false
    end
  end
end
