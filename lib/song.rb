require 'pry'
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name)
    end
  end

  def artist_name
    self.artist.name
  end

  def self.new_by_filename(file_name)
    new_song = self.new(file_name.split(" - ")[1])
    new_song.artist_name = file_name.split(" - ")[0]
    new_song
  end
end