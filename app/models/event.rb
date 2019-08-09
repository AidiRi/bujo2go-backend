class Event < ApplicationRecord
  has_one :collection
  belongs_to :user

end
