require('pry')
require_relative('Music_Collection')
require_relative('Artists')

Music_Collection.delete_all

artist1 = Artists.new({"artist" => "Gorrillaz"})
artist1.save()

album1 = Music_Collection.new({ 
  "album_title" => "Demon Dayz",
  "artist_id" => artist1.id
  })

album1.save()
binding.pry
nil
