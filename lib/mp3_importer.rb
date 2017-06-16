require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(test_music_path)
    @path = test_music_path
    #binding.pry
  end

  def import
    binding.pry
    temp = []
    path = @path
    path.each do |file|
      temp << file
    end

  end

  def files(test_music_path)

    end
end
