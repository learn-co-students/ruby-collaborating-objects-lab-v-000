

class Song
  attr_accessor :artist
  attr_reader :name

  def initialize (name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist_name=(name)
    binding.pry
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)
    #binding.pry
    song_name = filename.split(' - ')[1]
    song_artist = filename.split(' - ')[0]
    new_song_name = Song.new(song_name)
    new_song_name.artist_name = song_artist
    #new_song_name.artist = Artist.create(song_name)
    #new_song_name.artist.add_song(name)
    new_song_name
    #new_song_artist = Song.new(song_artist)
  end
end
