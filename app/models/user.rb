class User < ApplicationRecord
  has_many :tasks
  has_many :events
  has_many :notes
  has_many :habits

  validates :name, :username, presence: true

  def all_items
    items = []

    self.tasks.each do |task|
      items << task
    end

    self.notes.each do |note|
      items << note
    end

    self.events.each do |event|
      items << event
    end

    self.habits.each do |habit|
      items << habit
    end

    items
  end

  def collections
    
  end

end
