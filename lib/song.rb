require "artist.rb"
require "mp3_importer.rb"

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    chomped = name.chomp(".mp3")
    filelist = chomped.split(" - ")
    song = Song.new(filelist[1])
    artist = Artist.find_or_create_by_name(filelist[0])
    song.artist = artist
    song
  end

end