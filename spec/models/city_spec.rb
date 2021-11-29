# frozen_string_literal: true

require 'rails_helper'

RSpec.describe City, type: :model do
  context 'validations' do
    it 'is invalid without name presence' do
      city = City.new(name: nil)
      city.valid?
      expect(city.errors[:name]).to include("can't be blank")
    end
  end
end
