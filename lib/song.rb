require 'pry'
class Song

  attr_accessor :name, :artist

  @@songs = []



  def initialize(name)
    @name = name
    @@songs << self
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end



  def self.new_by_filename(filename)
    parsed = filename.split(" - ")
    song = Song.new(parsed[1])
    song.artist = Artist.find_or_create_by_name(parsed[0])
    song.artist.add_song(song)
    song
  end




end
