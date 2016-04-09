# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
types = ["burger", "taco", "Vivek"]
user = User.create!(username: "George", password: "password")
15.times do
  list = List.create!(list_title: Faker::Hipster.sentence(4, false, 7), list_desc: Faker::Hipster.paragraph(2, false, 8),
                        source_ref: "#", image_ref: "#", user_id: user.id, list_type: types.sample)
  rand(2..10).times do
    Vote.create!(user_id: user.id, list_id: list.id, up_vote: 1, down_vote: 0)
  end
  Item.create!(list_id: list.id, one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight", nine: "nine", ten: "ten")
end
