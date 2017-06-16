require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(test_music_path)
    @path = test_music_path

  end

  def files(@path)
    files = MP3Importer.new(test_music_path)
    #binding.pry
  end

end
