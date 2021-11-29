# frozen_string_literal: true

class City < ApplicationRecord
  belongs_to :state
  validates :name, presence: true

  scope :filter_by_state_name, ->(state) { joins(:state).where('lower(states.name) like ?', "%#{state.downcase}%") }
  scope :filter_by_city_name_like, ->(name) { where('lower(cities.name) LIKE ?', "%#{name.downcase}%") }
end
