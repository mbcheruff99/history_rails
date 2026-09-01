class Topic < ApplicationRecord
  has_many :events

  validates :title, :start_year, :end_year, presence: { message: "can't be blank"}
  
end
