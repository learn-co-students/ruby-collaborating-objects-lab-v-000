require_relative "artist.rb"

class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(file)
    song = self.new(file.split(" - ")[1].gsub(".mp3",""))
    song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
    song
  end
end