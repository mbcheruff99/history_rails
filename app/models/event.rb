class Event < ApplicationRecord
  has_many :event_people, dependent: :destroy
  has_many :people, through: :event_people

  has_many :event_locations, dependent: :destroy
  has_many :locations, through: :event_locations

  has_many :source_links, as: :linkable, dependent: :destroy
  has_many :resources, through: :source_links
  
  belongs_to :topic

  after_create :connect_people_to_locations

  def connect_people_to_locations
    people.each do |person|
      locations.each do |location|
        person.locations << location unless person.locations.include?(location)
      end
    end
  end
  
end
