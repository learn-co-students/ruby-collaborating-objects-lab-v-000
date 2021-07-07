require 'pry'

class MP3Importer 
  attr_reader :path
  
  #initialize a new MP3Importer instance with a path 
  def initialize(path)
    @path = path 
  end 
  
  #instance method that loops through the files in the given path for .mp3 files and returns just the filenames in an array
  #refer to this! https://stackoverflow.com/questions/12192343/how-to-split-a-string-into-only-two-parts-by-the-last-occurrence-of-the-split-c
  def files
    @files_array ||= Dir.glob("#{@path}/*.mp3").collect do |filename|
      filename.rpartition("/").last 
    end 
  end

  #instance method that takes above array of file names and imports them into library 
  def import
    self.files.each do |f|
      song = Song.new_by_filename(f)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
    end 
  end 
end 