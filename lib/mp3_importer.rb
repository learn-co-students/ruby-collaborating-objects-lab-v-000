require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    self.files
    @files.each do |filename|
      filename_array = filename.split(/\s-\s|\.mp3/)
      song = Song.new(filename_array[1])
      song.artist = Artist.find_or_create_by_name(filename_array[0])
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
