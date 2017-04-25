require 'pry'

class MP3Importer
  attr_accessor :path

  @@music_importer = []

  def initialize(path)
    @path = path
  end

  def files
    @@music_importer << Dir.glob("./spec/fixtures/*.mp3").each{|file| load file}
      @@music_importer
    #yield files.each{|file|
    #helper methods needed here #=> normalize_filename
    #should I put a yield? ex: yield #=> @@music_importer << file
    #binding.pry
    #.each {|file| require file }
    #loads mp3 files in the path directory
    #Dir.glob path/*.mp3
    #gsub
  end

end


# dir = "/path/to/directory"
# $LOAD_PATH.unshift(dir)
# Dir[File.join(dir, "*.rb")].each {|file| require File.basename(file) }
#^^^if just loading the contents of the file and don't need file more than once
#perhaps load should be used instead of require (don't like global variable here)
