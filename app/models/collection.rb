class Collection < ApplicationRecord
  has_many :tasks
  has_many :events
  has_many :notes


end
