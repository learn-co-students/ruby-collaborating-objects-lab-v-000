require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
    @library = []
  end

  def files
    raw_addr = Dir[@path+"/*.mp3"]
    cleaned_files = raw_addr.collect do |file|
      file.slice!(@path+"/")
      file
    end
    cleaned_files
  end

  def import
    song_array = self.files
    song_array.each do |filename|
      @library << Song.new_by_filename(filename)
    end
  end

end
