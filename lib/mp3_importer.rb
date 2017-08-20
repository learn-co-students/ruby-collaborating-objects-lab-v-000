require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.entries(@path).each do |file|
      if file.include?(".mp3")
        @files << file
      end
    end
    @files
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end


end
