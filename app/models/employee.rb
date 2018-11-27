class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, uniqueness: {message: "%{value} has to be unique."}
  validates :title, uniqueness: true, acceptance: {message: "%{value} has to be unique."}

  def to_s
    self.first_name + " " + self.last_name
  end
end
