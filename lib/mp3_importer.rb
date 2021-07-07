require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []

    Dir.glob(File.join(@path, '*.mp3')).each do |file|
      file = file.split("/")[4]
      files << file
    end
    
    files
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end