class AddYearToResource < ActiveRecord::Migration[8.1]
  def change
    add_column :resources, :year, :integer
  end
end
