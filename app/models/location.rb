class Location < ApplicationRecord
  has_many :event_locations, dependent: :destroy
  has_many :events, through: :event_locations
  
  has_many :source_links, as: :linkable, dependent: :destroy
  has_many :resources, through: :source_links

  has_many :person_locations, dependent: :destroy
  has_many :people, through: :person_locations

  validates :name, :country, :continent, :latitude, :longitude, presence: { message: " can't be blank"}

end
