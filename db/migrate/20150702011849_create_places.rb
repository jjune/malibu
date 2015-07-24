class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :coordinate_type
      t.geometry :coordinates

      t.timestamps null: false
    end
  end
end
