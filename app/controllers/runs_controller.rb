class RunsController < ApplicationController

  def index
    if @charity = Charity.find_by(id: params[:charity_id])
      @runs = @charity.runs
    else
      @runs = Run.all
    end
  end

  def show
    @run = Run.find_by(id: params[:id])
  end

  def new
    @run = Run.new
    @run.build_charity
  end

  def create
    @run = Run.new(run_params)
    @run.user_id = current_user.id
    if @run.save
      redirect_to run_path(@run)
    else
      render :new
    end
  end

  def edit
    @run = Run.find_by(id: params[:id])
  end

  def update
    @run = Run.find_by(id: params[:id])
    @run.update(run_params)
    redirect_to run_path(@run)
  end

  def destroy
    @run = Run.find_by(id: params[:id])
    @run.delete
    render :index
  end

  private

  def run_params
    params.require(:run).permit(:distance, :duration, :location, :shoes, :notes, :charity_id, charity_attributes: [:name, :description])
  end
end
