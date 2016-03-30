=begin
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist=(name)
    @artist = name
  end

  def self.new_by_filename(filename)
    array = filename.split(" - ")
    song = self.new(array[1])
    song.artist_name = array[0]
    song.artist.add_song(array[1])
    song
  end

  def artist_name=(name)
    x = Artist.find_or_create_by_name(name)
    self.artist = x
    return x
  end

end



class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    @songs << name
  end

  def name=(name)
    @name = name
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist)
    @@all.each {|x|
        if x.name == artist
          return x
        end
      }
    art = self.new(artist)
    art.name = artist
    @@all << art
    art
  end

  def print_songs
    songs.each {|x|
      puts x.name
      }
  end

end


dirty_diana = Song.new("Dirty Diana")
billie_jean = Song.new("Billie Jean")
artist = Artist.new("MJ")
artist.add_song(dirty_diana)
artist.add_song(billie_jean)

artist.print_songs

print artist.inspect
=end

class MP3Importer
  attr_accessor :path
  @files=[]

  def initialize(path)
    @path = path
  end

  def files
    @files  = Dir.entries(@path).select {|x|
      !File.directory?(x)
      }
    @files
  end

  def import
    self.files.each {|file|
      x = Song.new_by_filename(file)

      }
  end

end













