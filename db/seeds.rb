# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

states = [
  { name: 'Paraná' },
  { name: 'Santa Catarina' },
  { name: 'Rio Grande do Sul' }
]

states.each do |state|
  State.find_or_create_by(state)
end

cities = [
  { name: 'Curitiba', state: State.find_by(name: 'Paraná') },
  { name: 'Maringá', state: State.find_by(name: 'Paraná') },
  { name: 'Pinhais', state: State.find_by(name: 'Paraná') },
  { name: 'Florianópolis', state: State.find_by(name: 'Santa Catarina') },
  { name: 'Joinville', state: State.find_by(name: 'Santa Catarina') },
  { name: 'Lages', state: State.find_by(name: 'Santa Catarina') },
  { name: 'Porto Alegre', state: State.find_by(name: 'Rio Grande do Sul') },
  { name: 'Santa Maria', state: State.find_by(name: 'Rio Grande do Sul') },
  { name: 'Uruguaiana', state: State.find_by(name: 'Rio Grande do Sul') }
]

cities.each do |city|
  City.find_or_create_by(city)
end
