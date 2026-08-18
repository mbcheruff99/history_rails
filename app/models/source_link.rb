class SourceLink < ApplicationRecord
  belongs_to :resource
  belongs_to :linkable, polymorphic: true
end
