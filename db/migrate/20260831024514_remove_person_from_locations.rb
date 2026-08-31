class RemovePersonFromLocations < ActiveRecord::Migration[8.1]
  def change
    remove_reference :locations, :person, null: false, foreign_key: true
  end
end
