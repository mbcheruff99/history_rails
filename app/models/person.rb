class Person < ApplicationRecord
  has_many :locations
  
  has_many :event_people, dependent: :destroy
  has_many :events, through: :event_people

  has_many :source_links, as: :linkable, dependent: :destroy
  has_many :resources, through: :source_links

end
