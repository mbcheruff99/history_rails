class Event < ApplicationRecord
  has_many :event_people
  has_many :people, through: :event_people

  has_many :event_locations
  has_many :locations, through: :event_locations

  has_many :source_links, as: :linkable
  has_many :resources, through: :source_links
  
  belongs_to :topic
  
end
