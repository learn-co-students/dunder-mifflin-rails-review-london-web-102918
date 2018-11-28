class Dog < ApplicationRecord
    has_many :employees


  def num_of_owners
    employees.length
  end

  def self.sort_by_num_of_owners
    Dog.all.sort_by{|r| r.num_of_owners}
  end

end
