class Artist
  attr_accessor :name, :songs
  @@all = []  #stores all instances of Artist 

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song    #Artist.songs reader returns all songs 
                          #stored in @songs
  end

  def save
    @@all << self     #saves all created instances of Artist class in 
                      #@@all class variable
  end

  def self.all      #class method all returns all instances of Artist class 
    @@all
  end

  def self.find_or_create_by_name(name)   #class method uses find/create class 
                                          #methods to detect or create instances
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)     #class method detects instances from @@all class variable
    self.all.detect { |artist| artist.name == name }
  end

  def self.create(name)   #class method creates & stores instances vs initializing
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs #instance method iterates through @songs of an instance of Artist
    self.songs.each {|song| song.name}
  end
end


class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
end

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
