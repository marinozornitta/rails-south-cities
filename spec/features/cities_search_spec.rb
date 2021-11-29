# frozen_string_literal: true

require 'rails_helper'

feature 'User visits cities index' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_content('Cities')
  end

  scenario 'and realizes a search that redirects to cities_search' do
    visit root_path
    fill_in 'name', with: ''
    select 'All States', from: 'city_state'
    click_on 'Search'
    expect(current_path).to eq(cities_search_path)
  end
end
