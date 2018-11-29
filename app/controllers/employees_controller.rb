class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    byebug
    @employee.create(params[:employee])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
