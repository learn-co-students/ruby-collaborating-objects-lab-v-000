require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    chomped_file = file_name.chomp(".mp3").split(" - ")
    song = self.new(chomped_file[1])
    song.artist_name = chomped_file[0]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end

# binding.pry
