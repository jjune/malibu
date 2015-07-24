class CreateWebsiteServices < ActiveRecord::Migration
  def change
    create_table :website_services do |t|
      t.string :name
      t.text :description
      t.belongs_to :place, index:true
      t.string :redirect_url

      t.timestamps null: false
    end
  end
end
