class Resource < ApplicationRecord

has_many :source_links, dependent: :destroy
end
