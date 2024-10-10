require 'rails_helper'

RSpec.describe City, type: :model do
  let!(:state) { State.create!(name: 'Paraná', abbreviation: 'PR') }
  let!(:city1) { City.create!(name: 'Curitiba', state: state) }
  let!(:city2) { City.create!(name: 'Londrina', state: state) }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(city1).to be_valid
    end

    it 'is not valid without a name' do
      city = City.new(name: nil, state: state)
      expect(city).not_to be_valid
      expect(city.errors[:name]).to include("can't be blank")
    end

    it 'is not valid without a state' do
      city = City.new(name: 'New City', state: nil)
      expect(city).not_to be_valid
      expect(city.errors[:state]).to include("can't be blank")
    end

    it 'is not valid with a name shorter than 2 characters' do
      city = City.new(name: 'A', state: state)
      expect(city).not_to be_valid
      expect(city.errors[:name]).to include("is too short (minimum is 2 characters)")
    end

    it 'is not valid with a name longer than 100 characters' do
      city = City.new(name: 'A' * 101, state: state)
      expect(city).not_to be_valid
      expect(city.errors[:name]).to include("is too long (maximum is 100 characters)")
    end

    it 'is not valid if the name is not unique within the same state' do
      city = City.new(name: 'Curitiba', state: state)
      expect(city).not_to be_valid
      expect(city.errors[:name]).to include("should be unique within the same state")
    end
  end

  describe 'full_name' do
    it 'returns the full name of the city with its state' do
      expect(city1.full_name).to eq('Curitiba, Paraná')
    end
  end

  describe 'scopes' do
    context '.by_state' do
      it 'returns cities belonging to the specified state' do
        expect(City.by_state(state.id)).to include(city1, city2)
      end

      it 'does not return cities from other states' do
        other_state = State.create!(name: 'São Paulo', abbreviation: 'SP')
        other_city = City.create!(name: 'São Paulo', state: other_state)

        expect(City.by_state(state.id)).not_to include(other_city)
      end
    end
  end
end
