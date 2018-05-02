require 'pry'
class MP3Importer

  attr_accessor :path
  #should have a path attribute that gets set on initialization
  def initialize(path)
    @path = path
  end

  #loads all the mp3 files in the path directory
  #normalizes the filename to just the mp3 filename with no path
  def files
    @@array = Dir.glob("#{@path}/*.mp3")
    @@array = @@array.collect do |file|
      file.split("/")[-1]
    end
    @@array
  end

  #imports the files into the library by creating songs from a filename
  def import
    @@array.each {|filename|
      Song.new_by_filename(filename)
    }
  end

end
