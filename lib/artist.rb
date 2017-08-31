require 'pry'

class Artist
  attr_accessor :name, :songs, :artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song) #keeps track of an artist's songs
    @songs << song
    song.artist = self
  end

  def save(artist) #adds artist instance to @@all
    binding.pry
    artist.self
  end

  def self.find_or_create_by_name(name) #finds or creates an artist by name, creates new instance of Artist if none exist
    if (self.artist.nil?)
	      self.artist = Artist.new(name)
	    else
	      self.artist.name = name
	    end
	  end

  def print_songs #lists all of the artist's songs
    @songs
  end

end
