require 'rails_helper'

RSpec.describe 'Routing to cities', type: :routing do
  it 'routes /cities to the cities#index action' do
    expect(get: "/cities").to route_to(controller: 'cities', action: 'index')
  end

  it 'routes /cities/index to the cities#index action' do
    expect(get: '/cities/index').to route_to(controller: 'cities', action: 'index')
  end
end
