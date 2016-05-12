class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :city, default: 'Atlanta'
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
