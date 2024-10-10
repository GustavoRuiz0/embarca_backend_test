class City < ApplicationRecord
    belongs_to :state

    validates :name, presence: true, uniqueness: { scope: :state, message: 'should be unique within the same state' }
    validates :state, presence: true
    validates :name, length: { minimum: 2, maximum: 100 }

    def full_name
        "#{name}, #{state.name}"
    end

    scope :by_state, ->(state_id) { where(state_id: state_id) if state_id.present? } || all
end
