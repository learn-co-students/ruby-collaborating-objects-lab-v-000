require 'pry'
class MP3Importer
  #solves uninitalize constant MP3Importer error
  def path=(path)#setter method
    @path = path
    #binding.pry
  end
  def path#getter method
    @path
  end
  def initialize(path)
    @path = path
  end
  def files
    Dir.glob("#{path}/*.mp3").collect do |file|
      file.gsub("#{path}/","")#interpolate #{}
      #to dynamically accept diff. paths into
      #instance variable, path
    end
    # "artist - song - genre.mp3"
    #Dir.glob returns an array, changed filename extensions
    #to match filenames in tree structure
    #use Collect instead of Each to return a new collections
    #while iterating
  end
  def import
    #binding.pry
    #iterate and return list of songs from file name
    files.each do |song|
      Song.new_by_filename(song) 
    end
    #iterate through the files collection and
    #calls class method, Song.new_by_filename,
    #and pass its song to class method,
    #Song.new_by_filename, argument
    #to instantiate a song
    #binding.pry
  end
end
