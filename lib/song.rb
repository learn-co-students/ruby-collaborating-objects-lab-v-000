#class Song

class Song

#initialize with name, create attr_accessor, related to Artist by name
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

#class method new_by_filename gets new song for artist and loads
#song into library, normalizes songs

  def self.new_by_filename(file)
    song = self.new(file.split("-")[1].strip)
    song.artist = Artist.find_or_create_by_name(file.split("-")[0].strip)
    song.artist.songs << song.name
    song
  end

end
