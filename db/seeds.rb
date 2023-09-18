# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "csv"
csv_text = File.read(Rails.root.join('lib', 'seeds', 'Whist - migration.csv'))
data = CSV.parse(csv_text, :headers => true)

fortress = User.new
fortress.email = "iwan.pavord@gmail.com"
fortress.password = "123456"
fortress.name = "fortress"
fortress.save

["Iwan", "Jamie", "Rowan", "Angus", "Dodi", "Billy", "Toby", "Aaron" ,"Luke", "Jelan", "Elana", "Molly", "Coleman", "Charlie", "Laertis", "Rachel", "Esther", "Ben", "Warner", "Alec", "Lara", "Nick", "Otto", "Hayden", "Shafee"].each do |name|
  p = Player.new
  p.name = name
  p.user_id = 1
  p.save
end

(1..71).each do |n|
  g = Game.new
  g.save
end


data.each do |row|
  unless row["1 Round Bet"] == ""
    if row["Round 8 bet"].to_i.zero?
      13.times do |i|
        r = Round.new
        r.number = i
        r.game_id = (row["Offset"].to_i / 7) + 1
        r.player = Player.find_by(name: row["Name"])
        r.bet = row["#{i} Round bet"].to_i
        case i
        when 1
          r.cards = 7
        when 2
          r.cards = 6
        when 3
          r.cards = 5
        when 4
          r.cards = 4
        when 5
          r.cards = 3
        when 6
          r.cards = 2
        when 7
          r.cards = 1
        when 8
          r.cards = 2
        when 9
          r.cards = 3
        when 10
          r.cards = 4
        when 11
          r.cards = 5
        when 12
          r.cards = 6
        when 13
          r.cards = 7
        end
        r.score = row["#{i} Score"].to_i
        r.met_bet = r.score.to_i == r.bet.to_i + 5
        r.save
      end
    end
  end
end
