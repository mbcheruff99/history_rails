class AddUniqueIndexToPersonLocations < ActiveRecord::Migration[8.1]
   def change
    add_index :person_locations, [:person_id, :location_id], unique: true
  end
end
