class CreateSpecies < ActiveRecord::Migration

  def change
    enable_extension 'citext'

    create_table :species do |t|
      t.citext :common_name
      t.citext :latin_name
      t.text :description
      t.string :status
      t.text :habitat
      t.text :biology
      t.text :more_info
      t.integer :biome_id
      t.integer :chordatum_id

      t.timestamps null: false
    end
  end
end
