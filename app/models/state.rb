# frozen_string_literal: true

class State < ApplicationRecord
  validates :name, presence: true
end
