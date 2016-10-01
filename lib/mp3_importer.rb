require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path) # Initializes with a given path name of the folder with files
    self.path = path
    @files = []
  end

  def files
    #Dir.chdir(path)
    @files = Dir.glob("#{path}/*.mp3") #Collects all the file names as an array
    #@files = Dir.glob("*.mp3")
    @files.collect! {|x| File.basename(x)} #Removes the path name from the file
  end

  def import
    self.files #Runs the #files for @files to be populated
    @files.each {|song| Song.new_by_filename(song)} #Sends each file to be created as Song instance
  end
end
