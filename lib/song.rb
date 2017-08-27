require('pry')

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_filename = filename.split(" - ")
    artist = split_filename[0]
    title = split_filename[1]

    new_song = self.new(title)

    artist_obj = new_song.artist_name(artist)
    new_song.artist = artist_obj
    artist_obj.add_song(new_song)

    new_song
  end

  def artist_name(artist_name)
      found_artist = Artist.find_or_create_by_name(artist_name)
  end
end
