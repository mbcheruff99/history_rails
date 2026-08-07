class CreateLocations < ActiveRecord::Migration[8.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :country
      t.decimal :latitude
      t.decimal :longitude
      t.string :continent
      t.text :description

      t.timestamps
    end
  end
end
