class Person < ApplicationRecord
  has_many :locations
  
  has_many :event_people
  has_many :events, through: :event_people

  has_many :source_links, as: :linkable
  has_many :resources, through: :source_links

end
