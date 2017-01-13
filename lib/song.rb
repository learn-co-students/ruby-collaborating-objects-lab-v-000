require 'pry'
class Song
  attr_accessor :artist, :name, :song

  def initialize(name)
    @name = name
  end

  def songs
    @songs
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def new_by_filename(file_name)
   song = self.new         #creates the new song. Use self = Song
   song.file_name = file_name   #gives it a name
   song                    #instance of Song
  end

  def self.create_by_filename(file_name)
    song = Song.new_by_filename(file_name)
    song.save
    song                    #instance of Song
    binding.pry
  end

  def self.find_by_filename(file_name)
    self.all.detect{|song| song.filename == file_name}
  end

  def self.find_or_create_by_filename(file_name)
    self.find_by_filename(file_name) || self.create_by_filename(file_name)
  end

  def self.new_by_filename(file_name)
    file_name = file_name.split(" - ").first
    
  
    song.file_name = file_name
    song
    end
end
