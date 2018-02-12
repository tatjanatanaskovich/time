class WorkplacesController < ApplicationController
before_action :set_workplace, only: [:show, :edit, :update, :destroy]


  def index
    @workplace = Workplace.all
  end

  def show
    
  end

  def new
    @workplace = Workplace.new
  end

  def create
    @workplace = Workplace.new(workplace_params)
    if @workplace.save
      flash[:notice]= "Workplace was succesfully created!"
      redirect_to workplace_path(@workplace)
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @workplace.update(workplace_params)
      flash[:notice] = "Workplace was succesfully updated!"
      redirect_to workplace_path(@workplace)
    else
      render 'edit'
    end
  end

  def destroy
    @workplace.destroy
    flash[:notice] = "Workplace was succesfully deleted!"
    redirect_to workplace_path
  end

private

  def workplace_params
    params.require(:workplace).permit(:name, :description)
  end

  def set_workplace
    @workplace = Workplace.find(params[:id])
  end


end