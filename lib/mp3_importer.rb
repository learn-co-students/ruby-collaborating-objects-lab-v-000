require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).reject{ |mp3| File.directory? mp3}
    #binding.pry
  end

  def import
    files.each do |filename|
    Song.new_by_filename(filename)
    end
  end
end
