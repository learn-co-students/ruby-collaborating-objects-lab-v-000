require 'pry'

class MP3Importer
  attr_accessor :path #, :files

  def initialize(path)
    @path = path
    #@files = []
  end

  def files # method stores file names in @files variable as an array
    @files = Dir["#{path}/*.mp3"].collect do |filename|
      File.basename(filename)
    end
    binding.pry
  end

  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
      binding.pry
    end
  end
end

##---------------------  SONG CLASS  -------------------------------
## Song class parses filename, variables are assigned song and artist name and also
## creates instance of song. The #artist_name=(name) method collaborates with Artist
## class by assigning the song.artist what is produced by the #find_or_create_by_name(name) method
##

class Song
  attr_accessor :song_name, :artist

  def initialize(song_name)
    @song_name = song_name
  end

  def self.new_by_filename(filename) # filename argument from MP3Importer Class
    song = self.new(filename) # create a song instance
    song.song_name = filename.split(" - ")[1] # song_name equals filename index[1]
    name = filename.split(" - ")[0] # artist name equals filename index[0]
    song.artist_name = name
    # assign song an artist name, same method (see below) uses argument of artist name
    song # Song instance includes artist name and song name
    binding.pry
  end

  def artist_name=(name)   # setter method for above "song.artist_name"
    self.artist = Artist.find_or_create_by_name(name) # whatever the #.find_or_create_by_name method
    # produces is assigned to self.artist
    artist.add_song(self) # adds Song instance to @songs varialble in Artist class
    binding.pry
  end
end

##--------------------------------  ARTIST CLASS  ----------------------------------

class Artist
  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    binding.pry
  end

  def save
    @@all << self # add artist instance to @@all array
  end

  def self.songs
    @songs
  end

  def self.find_or_create_by_name(name) # this method is called from Song class
    self.find_name(name) || self.create_name(name)
  end

  def self.find_name(name)
    self.all.find do |artist| # searches for artist name in @@all array
      artist.name == name
    end
  end

  # #.tap method yields self to the block, and then returns self. The primary purpose of this method is to “tap into”
  # a method chain, in order to perform operations on intermediate results within the chain.

  def self.create_name(name) # name passed from MP3Importer class through Song class
    #new_artist = self.new(name)
    #new_artist.save
    #@@all << new_artist

    self.new(name).tap do |artist| # creates new artist instance "self.new(name)" from name argument and adds to @@all array
      # if artist exist, no need to create a new artist instance
      artist.save
      binding.pry
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end


test_music_path = "./spec/fixtures/mp3s"
#music_path = "./db/mp3s"
music_importer = MP3Importer.new(test_music_path)
music_importer.files
music_importer.import
#song = Song.new("Creed")
