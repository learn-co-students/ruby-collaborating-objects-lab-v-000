require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files

    files = []

    Dir.new(@path).each do |file|
    files << file unless file.length < 4
    #binding.pry
    end
    files

  end

  def import
    #imports after Song.new_by_filename??
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
