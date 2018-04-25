require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    #comp[0] = Artist name
    #comp[1] = Song name
    #comp[2] = Genre
    components = filename.split("-")
    song = self.new(components[1].strip)
    song.artist_name = (components[0].strip)
    song.genre = File.basename(components[2], File.extname(components[2])).strip
    song
  end

  def artist_name=(name)
    if @artist.nil?
      artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
      @artist = artist
    else
      @artist.name = name
    end
  end
end
