class DogsController < ApplicationController
  before_action :find_dog, only: [:show, :edit, :update]
  def index
    @dogs = Dog.all
  end

  def show
  end

private

  def dog_params(*args)
    params.require(:dog).permit(*args)
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end

end
