require 'rails_helper'

RSpec.describe CitiesController, type: :controller do
  describe 'GET #index' do
    context 'when filtering by state' do
      let!(:state1) { State.create!(name: 'Paraná', abbreviation: 'PR') }
      let!(:state2) { State.create!(name: 'São Paulo', abbreviation: 'SP') }

      let!(:city1) { City.create!(name: 'Curitiba', state: state1) }
      let!(:city2) { City.create!(name: 'Londrina', state: state1) }
      let!(:city3) { City.create!(name: 'São Paulo', state: state2) }
      let!(:city4) { City.create!(name: 'Campinas', state: state2) }

      before(:each) do
        get :index, params: { state: 'Paraná' }
      end

      it 'returns cities belonging to the specified state' do
        expect(assigns(:cities).pluck(:name)).to include('Curitiba', 'Londrina')
      end

      it 'does not return cities from other states' do
        expect(assigns(:cities).pluck(:name)).not_to include('São Paulo', 'Campinas')
      end

      it 'contains additional cities from the specified state' do
        expect(assigns(:cities).pluck(:name)).to include('Cascavel', 'Colombo')
      end
    end

    context 'when filtering by name' do
      before(:each) do
        get :index, params: { name: 'Curitiba' }
      end

      it 'returns cities matching the specified name' do
        expect(assigns(:cities).pluck(:name)).to include('Curitiba')
      end

      it 'does not return cities that do not match the specified name' do
        expect(assigns(:cities).pluck(:name)).not_to include('Londrina', 'São Paulo', 'Campinas')
      end
    end

    context 'when filtering by state and name' do
      before(:each) do
        get :index, params: { state: 'Paraná', name: 'Curitiba' }
      end

      it 'returns only the city matching both state and name' do
        expect(assigns(:cities).pluck(:name)).to contain_exactly('Curitiba')
      end

      it 'does not return other cities from the same state' do
        expect(assigns(:cities).pluck(:name)).not_to include('Londrina', 'Cascavel', 'Colombo')
      end
    end
  end
end
