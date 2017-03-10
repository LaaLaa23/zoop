class CreateBiomes < ActiveRecord::Migration

  def change
    enable_extension 'citext'

    create_table :biomes do |t|
      t.citext :name
      t.text :description

      t.timestamps null: false
    end
  end
end
