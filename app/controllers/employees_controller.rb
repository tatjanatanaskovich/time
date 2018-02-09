class EmployeesController < ApplicationController

before_action :set_employee, only: [:show, :edit, :update, :destroy]


	def index
		@employee = Employee.all
	end

	def show
		
	end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(employee_params)
		if @employee.save
			flash[:notice]= "Employee was succesfully created!"
			redirect_to employee_path(@employee)
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @employee.update(employee_params)
			flash[:notice] = "Employee was succesfully updated!"
			redirect_to employee_path(@employee)
		else
			render 'edit'
		end
	end

	def destroy
		@employee.destroy
		flash[:notice] = "Employee was succesfully deleted!"
		redirect_to employee_path
	end

private

	def employee_params
		params.require(:employee).permit(:id_card, :name, :username, :email)
	end

	def set_employee
		@employee = Employee.find(params[:id])
	end

end
