# frozen_string_literal: true

# Migration to create the State Table
class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :name

      t.timestamps
    end
  end
end
