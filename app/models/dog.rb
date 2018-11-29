class Dog < ApplicationRecord
  has_many :employees

  def num_of_employees
    employees.length
  end

  def self.sort_by_num_of_employees
    Dog.all.sort_by{|r| r.num_of_employees}
  end

end
