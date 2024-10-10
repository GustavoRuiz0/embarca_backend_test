class CitiesController < ApplicationController
  def index
    @cities = City.includes(:state).all

    if params[:state].present?
      @cities = @cities.joins(:state).where("states.name ILIKE ?", "%#{params[:state]}%")
    end

    if params[:name].present?
      @cities = @cities.where('cities.name ILIKE ?', "%#{params[:name]}%")
    end
  end
end
