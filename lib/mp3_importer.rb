require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end


  def files

  end

  def import
    list = Dir["#{@path}/**/*.mp3"]
    binding.pry
  end
end

new_list = MP3Importer.new('./db/mp3s').import