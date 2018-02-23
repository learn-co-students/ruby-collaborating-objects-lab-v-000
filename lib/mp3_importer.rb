require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
    # binding.pry

  end

  def files
    list = Dir.entries(path).select {|file| file.include?(".mp3")}
  end

end
