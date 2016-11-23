# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Band.create(name: "Out Loud")

[{ title: "Play That Funky Music", artist: "Wild Chery", band_id: 1, active: true },
 {title: "Panama", artist: "Van Halen", band_id: 1, active: true },
 {title: "3 am", artist: "Matchbox 20", band_id: 1, active: true }].each do |song|
  Song.create(song)
end
