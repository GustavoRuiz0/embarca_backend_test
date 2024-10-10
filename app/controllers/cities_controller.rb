# frozen_string_literal: true
class CitiesController < ApplicationController
  def index
    @cities = City.all

    @cities = @cities.joins(:state).where(states: { name: params[:state] }) if params[:state].present?

    @cities = @cities.where('cities.name LIKE ?', "%#{params[:name]}%") if params[:name].present?
  end
end
