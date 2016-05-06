require 'pry'

class MP3Importer

  attr_reader :path
  attr_accessor :songs

  def initialize(path)
    @path = path
  end

  def files
    # Dir.entries(path).select {|file| file.end_with?(".mp3")}
    Dir.open(@path).entries - [".", ".."]
  end

  def import
    # binding.pry
    self.files.collect {|file| Song.new_by_filename(file)}
  end

end
