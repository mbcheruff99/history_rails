class Location < ApplicationRecord
  has_many :event_locations
  has_many :events, through: :event_locations
  
  belongs_to :person
  
end
