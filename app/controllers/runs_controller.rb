class RunsController < ApplicationController

  def index
    @runs = Run.all
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

  private

  def run_params
    params.require(:run).permit(:distance, :duration, :location, :shoes, :notes, :charity_id)
  end
end
