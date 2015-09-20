# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

puts "Importing sports..."
CSV.foreach(Rails.root.join("sports.csv"), headers: true) do |row|
  Sport.create! do |sport|
    sport.id = row[0]
    sport.name = row[1]
  end
end

puts "Importing positions..."
CSV.foreach(Rails.root.join("positions.csv"), headers: true) do |row|
  Position.create! do |position|
    position.position_name = row[0]
    position.shorthand = row[1]
    # position.type = row[2]
    position.sport_id = row[3]
    position.id = row[4]
  end
end

puts "Importing statfields..."
CSV.foreach(Rails.root.join("statfields.csv"), headers: true) do |row|
  Statfield.create! do |statfield|
    statfield.name = row[0]
    statfield.shorthand = row[1]
    statfield.sport_id = row[2]
    statfield.position_id = row[3]
  end
end
