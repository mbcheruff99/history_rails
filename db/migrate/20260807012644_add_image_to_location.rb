class AddImageToLocation < ActiveRecord::Migration[8.1]
  def change
    add_column :locations, :image, :string
  end
end
