class EmployeesController < ApplicationController
  before_action :find_employee, only:[:show, :edit, :update, :destroy]

  before_action :find_dogs, only:[:edit, :new, :create]

  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def edit
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save
      redirect_to employee_path(@employee)
    else
      flash[:errors] = @employee.errors.full_messages
      render :new
    end
  end

  def update
    @employee.update(employee_params)
    if @employee.valid?
      @employee.save
      redirect_to employee_path(@employee)
    else
      flash[:errors] = @employee.errors.full_messages
      render :edit
    end
  end

  def destroy
    @employee.destroy
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

  def find_employee
    @employee = Employee.find(params[:id])
  end

  def find_dogs
    @dogs = Dog.all
  end

end
