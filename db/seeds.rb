# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# TVMAZE
# url_season = 'http://api.tvmaze.com/shows/82/seasons'
# uri_season = URI(url_season)
# response = Net::HTTP.get(uri_season)
# parsed_season = JSON.parse(response)
#
# Season.destroy_all
# Episode.destroy_all
Book.destroy_all
Character.destroy_all
#
# parsed_season.each do |d|
#   # inserting data on season table
#   Season.create(
#     id: d['id'],
#     season_number: d['number'],
#     premiere_date: d['premiereDate'],
#     end_date: d['endDate'],
#     summary: d['summary']
#   )
#   i = d['id']
#   # searching episodes from this season
#   url = 'http://api.tvmaze.com/seasons/' + i.to_s + '/episodes'
#   uri = URI(url)
#   response = Net::HTTP.get(uri)
#   parsed_episode = JSON.parse(response)
#
#   parsed_episode.each do |e|
#     Episode.create(
#      id: e['id'],
#      season_id: d['id'],
#      episode_number: e['number'],
#      name: e['name'],
#      date: e['date'],
#      summary: e['summary']
#     )
#   end
# end

url = 'https://anapioficeandfire.com/api/books'
uri = URI(url)
response = Net::HTTP.get(uri)
parsed_book = JSON.parse(response)

# books = GameOfThronesApi.get_books
# chars = GameOfThronesApi.get_characters

parsed_book.each do |b|
  Book.create(
           book_name: b['name']
  )
  characters = b['characters']

  characters.each do |c|

    uri = URI(c)
    response = Net::HTTP.get(uri)
    parsed_chars = JSON.parse(response)
    Character.create(
                 name: parsed_chars['aliases'][0]
                 # house: chars['allegiances']
    )
  end
end


puts "Seed generated #{Book.count} books and #{Character.count} chars"