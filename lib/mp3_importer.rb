require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(test_music_path)
    @path = test_music_path
    #binding.pry
  end

  def music_importer
    binding.pry
    songs = MP3Importer.new

  end

  def files(test_music_path)

    end
end
