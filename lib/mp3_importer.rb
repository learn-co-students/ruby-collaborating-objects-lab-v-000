require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    songs = Dir[@path + "/*.mp3"]
    songs.collect do |filename|
      filename.slice!(/(.+\/)/)
      filename
    end
    songs
  end

  def import
    self.files.each do |filename|
      song = Song.new_by_filename(filename)
    end
  end

end