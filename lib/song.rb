require 'pry'
class Song
  attr_accessor :name, :artist



  def initialize(name)
    @name = name

  end

  def artist_name=(artist_name)

    self.artist = Artist.find_or_create_by_name(artist_name)

    artist.add_song(self) if artist != nil



  end

  def self.new_by_filename(filename)


    name = filename.split(" - ")[1]

    song = self.new(name)

    song.artist_name= (filename.split(" - ")[0])
    song.artist.save if song.artist != nil

    song




  end


end
