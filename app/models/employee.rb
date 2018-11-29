class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, uniqueness: {message: "Alias must be unique"}
  validates :title, uniqueness: {message: "Title must be unique"}

  def to_s
    self.first_name +  " " + self.last_name
  end

end
