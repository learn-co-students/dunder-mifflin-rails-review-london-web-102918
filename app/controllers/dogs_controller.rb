class DogsController < ApplicationController

  def index
    if !params[:order].nil? && !params[:order][:descending].nil?
      @dogs = Dog.sort_by_num_of_owners.reverse
    else
      @dogs = Dog.sort_by_num_of_owners
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

end
