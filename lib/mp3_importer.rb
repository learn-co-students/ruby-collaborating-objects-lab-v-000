#MP3Importer
  #initialize
#    accepts a file path to parse mp3 files from (FAILED - 8)
  #files
  #  loads all the mp3 files in the path directory (FAILED - 9)
  #  normalizes the filename to just the mp3 filename with no path (FAILED - 10)
  #import
  #  imports the files into the library by creating songs from a filename (FAILED - 11)

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
     Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "")}
     end

  def import
     self.files.each do |file|
       Song.new_by_filename(file)
     end
   end


end
