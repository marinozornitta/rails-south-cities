# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CitiesController, type: :controller do
  render_views

  describe 'GET index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end
    it 'returns full list of cities' do
      get :index
      expect(assigns(:cities)).to eq(City.all)
    end
  end

  describe 'GET search' do
    it 'returns a successful response' do
      get :search
      expect(response).to be_successful
    end
    it 'returns a list of cities' do
      params = { name: 'Pinhais', city: { state: 'Paraná' } }
      get :search, params: params
      expect(response).to be_successful
      expect(response).to render_template('cities/search')
    end
  end
end
