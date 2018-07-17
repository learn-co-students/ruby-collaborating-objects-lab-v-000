require "pry"
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.entries(path).select do |f|
      f.include?("mp3")
    end
  end

  def import
    files.each do |filename|
      song_artist = filename.split(" - ")
      song = Song.new(song_artist[1])
      artist = Artist.find_or_create_by_name(song_artist[0])
      artist.add_song(song)
    end
  end
end
