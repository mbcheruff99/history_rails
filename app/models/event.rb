class Event < ApplicationRecord
  has_many :event_people
  has_many :people, through: :event_people

  has_many :event_locations
  has_many :locations, through: :event_locations

  
  belongs_to :topic
  
end
