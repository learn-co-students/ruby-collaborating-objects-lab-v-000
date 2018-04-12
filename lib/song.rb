require "pry"

class Song

  attr_accessor :name, :artist

  def self.new_by_filename(filename)
    matches = filename.match /(?<artist>.+) - (?<title>.+) - (.+).mp3/
    song = new(matches[:title])
    song.artist = Artist.find_or_create_by_name matches[:artist]
    song
  end

  def initialize(name)
    @name = name
  end

  def artist=(artist_object)
    @artist = artist_object
    artist_object.add_song self
  end

end
