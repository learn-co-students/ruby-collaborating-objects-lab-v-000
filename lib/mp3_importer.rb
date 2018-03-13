require "artist.rb"
require "song.rb"

class MP3Importer
  attr_accessor :path


  def initialize(path)
    @path = path
    @mp3s = []
  end


  def import
    files.each do |file|
      chomped = file.chomp(".mp3")
      filelist = chomped.split(" - ")
      song = Song.new(filelist[1])
      artist = Artist.find_or_create_by_name(filelist[0])
      song.artist = artist
    end
  end


  def files
    Dir.foreach(@path) do |file|
      if file.end_with?(".mp3")
        @mp3s << file
      end
    end
    @mp3s
  end

end