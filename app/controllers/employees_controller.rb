class EmployeesController < ApplicationController
  before_action :find_employee, only: [:show, :edit, :update]
  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id))
    if @employee.valid?
      @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

private
  def employee_params(*args)
    params.require(:employee).permit(*args)
  end

  def find_employee
    @employee = Employee.find(params[:id])

  end

end
