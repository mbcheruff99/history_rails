class Resource < ApplicationRecord

has_many :source_links, dependent: :destroy

has_many :events, through: :source_links, source: :linkable, source_type: "Event"
has_many :people, through: :source_links, source: :linkable, source_type: "Person"
has_many :locations, through: :source_links, source: :linkable, source_type: "Location"

end
