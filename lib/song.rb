require "pry"
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist, song = file_name.split(" - ")
    new_song = self.new(song)
    new_song.artist= artist
    # binding.pry
  end

  def artist_name=(name)
     Artist.find_or_create_by_name(name)
  end

end
