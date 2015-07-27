class CreatePlaceServices < ActiveRecord::Migration
  def change
    create_table :place_services do |t|
      t.belongs_to :place, index: true
      t.belongs_to :service_type, index: true
      t.string :service_name
      t.string :service_short_description
      t.string :service_category
      t.integer :service_id

      t.timestamps null: false
    end
  end
end
