require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    array = []
    array = Dir.entries(path)
    array.each do |filename|
      if filename.include?("mp3")
        filename = filename.split(/.\/\w*\/\w*\/\w*\//)
        @files << filename[0]
      end
    end
    @files
  end

  def import
    files
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
