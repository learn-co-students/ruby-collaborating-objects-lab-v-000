require 'pry'
class Song
  attr_accessor :name
  attr_reader :artist, :genre
  def initialize(name)
    @name = name
  end

  def artist=(artist)
    artist = Artist.new(artist) if !artist.is_a?(Artist)
    @artist = artist
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    split_path = filename.split(/-|\./).collect{ |i| i.strip}
    temp_name = Song.new(split_path[1])
    temp_name.artist = Artist.find_or_create_by_name(split_path[0])
  end

  # def genre=(genre)
  #
  # end

end
