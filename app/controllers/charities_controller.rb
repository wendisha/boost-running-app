class CharitiesController < ApplicationController

  def show
    @charity = Charity.find_by(id: params[:id])
  end

  def index
    @charities = Charity.all
  end

  def new
    @charity = Charity.new
  end

  def create
    @charity = Charity.new(charity_params) 
    if @charity.save
      redirect_to charity_path(@charity.id)
    else
      render :index
    end
  end

  private

  def charity_params
    params.require(:charity).permit(:name, :description)
  end
end
