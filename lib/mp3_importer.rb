require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def import
    self.files
    @files.each { |f| Song.new_by_filename(f) }
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
