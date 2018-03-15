require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{path}/*.mp3"].collect{|path| path.split('/').last}
  end

  def import
    files.each{ |file|
      split_path = file.split(/-|\./).collect{ |i| i.strip}
      temp_name = Song.new(split_path[1])
      temp_name.artist = Artist.find_or_create_by_name(split_path[0])
    }
  end
end
