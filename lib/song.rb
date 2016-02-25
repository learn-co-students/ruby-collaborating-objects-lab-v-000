require 'pry'
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name=name

  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)

  end

  def artist_name
      if artist
      self.artist.name
     end
  end


  def self.new_by_filename(
    file)
    artist = file.split(" - ")[0]
    song = file.split(" - ")[1]
    song = self.new(song)
    # binding.pry
    song.artist_name = artist
    song
  end

end