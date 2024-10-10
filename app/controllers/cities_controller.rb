class CitiesController < ApplicationController
  def index
    @cities = City.all

    if params[:state].present? || params[:name].present?
      @cities = @cities.joins(:state)

      if params[:state].present?
        @cities = @cities.where('states.name LIKE ?', "%#{params[:state]}%")
      end

      if params[:name].present?
        @cities = @cities.where('cities.name LIKE ?', "%#{params[:name]}%")
      end
    end
  end
end
