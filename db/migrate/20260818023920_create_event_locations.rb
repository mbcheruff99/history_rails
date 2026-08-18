class CreateEventLocations < ActiveRecord::Migration[8.1]
  def change
    create_table :event_locations do |t|
      t.references :event, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
