class ChangeImageUrlToImageInTopics < ActiveRecord::Migration[8.1]
  def change
    rename_column :topics, :image_url, :image
  end
end
