require 'pry'

class MP3Importer
  attr_accessor :path, :songs

  def initialize(path)
    @path = path
  end



  def files
    files = Dir["#{@path}/*.mp3"]
    files.collect do |song_file|
      song_file.gsub(@path + '/', '')
    end
  end

  def import
  end


end
