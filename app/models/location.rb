class Location < ApplicationRecord
  has_many :event_locations
  has_many :events, through: :event_locations
  
  has_many :source_links, as: :linkable
  has_many :resources, through: :source_links
  
  belongs_to :person
  
end
