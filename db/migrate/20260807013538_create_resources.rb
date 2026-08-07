class CreateResources < ActiveRecord::Migration[8.1]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :author
      t.string :organization
      t.string :source_type
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
