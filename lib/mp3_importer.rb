require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    self.files
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

  def files
    @files = []
    Dir.glob("#{@path}/*.mp3").each do |f|
      file_array = f.split("#{@path}/")
      @files << file_array[1]
    end
    @files
  end

end
