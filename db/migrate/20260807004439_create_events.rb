class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :start_year
      t.integer :end_year
      t.string :date_display
      t.text :summary

      t.timestamps
    end
  end
end
