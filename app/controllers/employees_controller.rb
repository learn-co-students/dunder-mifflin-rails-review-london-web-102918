class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create

    @employee = Employee.new(employee_params)

    if @employee.valid?
      @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  def edit
    @dogs = Dog.all
    @employee = Employee.find(params[:id])
  end

  def update
  end

  def destroy
  end


  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :title, :office, :alias)
  end

end
