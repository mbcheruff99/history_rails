class CreatePeople < ActiveRecord::Migration[8.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :birth_year
      t.integer :death_year
      t.string :date_display
      t.text :biography
      t.string :image

      t.timestamps
    end
  end
end
