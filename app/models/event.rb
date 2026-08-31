class Event < ApplicationRecord
  has_many :event_people, dependent: :destroy
  has_many :people, through: :event_people

  has_many :event_locations, dependent: :destroy
  has_many :locations, through: :event_locations

  has_many :source_links, as: :linkable, dependent: :destroy
  has_many :resources, through: :source_links
  
  belongs_to :topic
  
end
