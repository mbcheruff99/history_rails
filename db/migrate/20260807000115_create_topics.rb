class CreateTopics < ActiveRecord::Migration[8.1]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :description
      t.integer :start_year
      t.integer :end_year
      t.string :image_url

      t.timestamps
    end
  end
end
