require 'pry'

class Song

attr_reader :name, :artist


  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

def artist(name)
  self.artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
end

def self.new_by_filename(file)
  song = self.new
  song.title = file.split(" - ")[1]
  song
end

end
