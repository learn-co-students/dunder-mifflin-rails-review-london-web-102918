class DogsController < ApplicationController
  before_action :find_dog, only: [:show, :edit, :update]

  def index
    if !params[:name]
    @dogs = Dog.all
  else
    @dogs = Dog.all.sort{|a,b| b.employees.length <=> a.employees.length}
  end
  end

  def show
  end


  private

  def dog_params(*args)
    params.require(*args)
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end

end
