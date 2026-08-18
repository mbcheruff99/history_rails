class CreateSourceLinks < ActiveRecord::Migration[8.1]
  def change
    create_table :source_links do |t|
      t.references :resource, null: false, foreign_key: true
      t.references :linkable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
