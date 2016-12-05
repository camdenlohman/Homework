require("minitest/autorun")
require("minitest/rg")
require_relative("Songs")

class SongsSpec < MiniTest::Test

def test_get_title

songs1 = Songs.new()

assert_equal("Crazy Train",songs1.get_song_title(0))
end

def test_get_genre

songs1 = Songs.new()

assert_equal("Metal",songs1.get_genre(0))
end
end
