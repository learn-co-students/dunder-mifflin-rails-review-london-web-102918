class DogsController < ApplicationController
  before_action :find_dog, only:[:show, :edit]

  def index
    if !params[:order].nil? && !params[:order][:descending].nil?
      @dogs = Dog.sort_by_num_of_employees.reverse
    else
      @dogs = Dog.sort_by_num_of_employees
    end
  end

  def show
  end

  def new
    @dog = Dog.new
  end

  def edit
  end

  private

  def find_dog
    @dog = Dog.find(params[:id])
  end

end
