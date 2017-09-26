require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path=path
  end

  def files
    Dir.entries(@path).select do |file|
      file.end_with?(".mp3")
    end
  end

  def import
    files.each do |file|
      song = Song.new(file.split(" - ")[1])
      song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
      song.artist.add_song(song)
    end
  end

end
