# frozen_string_literal: true

require 'rails_helper'

RSpec.describe State, type: :model do
  context 'validations' do
    it 'is invalid without name presence' do
      state = State.new(name: nil)
      state.valid?
      expect(state.errors[:name]).to include("can't be blank")
    end
    it 'is valid with name presence' do
      state = State.new(name: 'Acre')
      state.valid?
      expect(state).to be_valid
    end
  end
end
