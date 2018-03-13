require 'pry'

class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if temp = self.all.detect { |i| i.name == name }
      temp
    else
      temp2 = self.new(name)
      @@all << temp2
      temp2
    end
  end

  def print_songs
    self.songs.each { |i| puts i.name }
  end

end

#----

class Song
  @@allsongs = []
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    #binding.pry
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    @@allsongs << new_song
    new_song.artist_name = artist

    new_song
  end

  def self.all
    @@allsongs
  end

end

#----

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @entries = Dir["*"]
    @files = @entries.select { |i| i[/mp3$/] }
  end

  def import

    @files.each{ |i| Song.new_by_filename(i) }
  end

end

#----



a = MP3Importer.new("")
a.import

binding.pry



=begin

a = [ "Action Bronson - Larry Csonka - indie.mp3",
 "Real Estate - Green Aisles - country.mp3",
 "Real Estate - It's Real - hip-hop.mp3",
 "Thundercat - For Love I Come - dance.mp3" ]

a = MP3Importer.new("")

puts a

puts ""

puts a.files

b = a.import


c = Artist.all.size

binding.pry

=end

