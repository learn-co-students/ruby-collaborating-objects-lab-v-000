require "pry"
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(new_file)
    # binding.pry
    name = new_file.split(" - ")[1]
    artist = new_file.split(" - ")[0]
    song = Song.new(name)
    song.artist =  Artist.new(artist)
    song.artist.songs << song
    duplicate = Artist.all.detect {|i| i.name == artist }
    if !duplicate
      song.artist.save
    end
    song
    # song.artist = artist
  end

end
