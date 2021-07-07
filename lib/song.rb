require "pry"
class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
    @artist = nil
  end

  def self.new_by_filename(file_name)
    data = file_name.split(/[-.]+/)
    # create the new Artist and Song Objects
    song_artist = Artist.find_or_create_by_name(data[0].strip)
    new_song = Song.new(data[1].strip)
    # and now connect them
    new_song.artist = song_artist
    song_artist.add_song(new_song)
    # In terms of the domain, spec doesn't say when an artist should be saved.   Putting it here
    # passes the tests.  I would argue that it should be saved in initialize (anyone who says they
    # are an artist is saved) or in add_song (once an artist has a song, they should be saved forever)
    # but both these options run into problems with the test spec expects....
    song_artist.save
    new_song
  end

  def artist_name
    artist.name
  end
end
