require 'rails_helper'

RSpec.describe State, type: :model do
  describe 'associations' do
    it 'has many cities' do
      state = State.reflect_on_association(:cities)
      expect(state.macro).to eq(:has_many)
    end
  end

  describe 'validations' do
    subject { State.new(name: 'Paraná', abbreviation: 'PR') }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an abbreviation' do
      subject.abbreviation = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid if abbreviation length is not 2' do
      subject.abbreviation = 'P'
      expect(subject).to_not be_valid

      subject.abbreviation = 'PR'
      expect(subject).to be_valid

      subject.abbreviation = 'PAR'
      expect(subject).to_not be_valid
    end
  end
end
