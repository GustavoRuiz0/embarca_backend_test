#frozen_string_literal: true

class CitiesController < ApplicationController
  def index
    @cities = City.all

    if params[:state].present? || params[:name].present?
      @cities = @cities.joins(:state)

      if params[:state].present?
        @cities = @cities.where('states.name ILIKE ?', "%#{params[:state]}%")
      end

      if params[:name].present?
        @cities = @cities.where('cities.name ILIKE ?', "%#{params[:name]}%")
      end
    end
  end
end
