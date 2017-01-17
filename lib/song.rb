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
  Artist.find_by_name(name) || Artist.create_by_name(name)
      #self.artist.name = name
  end


  def self.create_by_filename(file_name)
    song = Song.new_by_filename(file_name)
    song.save
    song                    #instance of Song
  end

  def self.find_by_filename(file_name)
    self.all.detect{|song| song.filename == file_name}
  end

  def self.find_or_create_by_filename(file_name)
    self.find_by_filename(file_name) || self.create_by_filename(file_name)
  end

  def self.new_by_filename(file_name)
    #"artist - song - genre.mp3"
    artist_name = file_name.split(" - ").first #"John Lennon"
    song_name = file_name.split(" - ")[1]
    song = self.new(song_name)
    song.artist_name=(artist_name)
    
    #song.file_name = file_name
    #song.uniq 
    #song.to_set
    #song & song
    song
    end
end
