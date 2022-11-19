# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"
address_list = ["Avenida Rio Branco, 24", "Rua Lopes Trovão", "Rua Noronha Torrezão", "Praia de Icaraí", "Rua Nilo Peçanha, Niteroi", "Avenida Marechal Deodoro", "Avenida Amaral Peixoto"]
formation_list = ["Enfermeiro", "Nutricionista", "Psicólogo", "Técnico de Enfermagem"]
care_type_list = ["Cuidador", "Nutricionista", "Fisioterapia", "Psicologia"]

6.times do
  caregiver = Caregiver.new
  caregiver.email = Faker::Internet.email
  caregiver.first_name = Faker::Name.unique.name
  caregiver.last_name = Faker::Name.unique.name
  caregiver.street = address_list.sample
  caregiver.city = "Niterói"
  caregiver.formation = formation_list.sample
  caregiver.care_type = care_type_list.sample
  caregiver.password = '123456'
  caregiver.value = 2
  caregiver.address = caregiver.street + ", " + caregiver.city
  caregiver.save
end
