class CreateChordata < ActiveRecord::Migration

  def change
    enable_extension 'citext'

    create_table :chordata do |t|
      t.citext :class_name
      t.text :image

      t.timestamps null: false
    end
  end
end
