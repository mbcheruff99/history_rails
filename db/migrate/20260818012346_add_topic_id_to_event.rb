class AddTopicIdToEvent < ActiveRecord::Migration[8.1]
  def change
    add_reference :events, :topic, null: false, foreign_key: true
  end
end
