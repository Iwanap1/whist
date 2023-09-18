# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
fortress = User.new
fortress.email = "iwan.pavord@gmail.com"
fortress.password = "123456"
fortress.league_name = "fortress"
fortress.save

["Iwan", "Jamie", "Rowan", "Angus", "Dodi", "Billy", "Toby", "Aaron" ,"Luke", "Jelan", "Elana", "Molly", "Coleman", "Charlie", "Laertis", "Rachel", "Esther", "Ben", "Warner", "Alec", "Lara", "Nick", "Otto", "Hayden", "Shafee"].each do |name|
  p = Player.new
  p.name = name
  p.user_id = 1
  p.save
end
