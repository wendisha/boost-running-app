class CharitiesController < ApplicationController

  def show
    @charity = Charity.find_by(id: params[:id])
  end

end
