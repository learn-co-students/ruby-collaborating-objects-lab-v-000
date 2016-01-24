require 'pry'
class Song

  attr_accessor :name, :artist
  attr_reader :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_file = filename.split(" - ")
    artist_string = split_file[0]
    song_string = split_file[1] 
    song = Song.new(song_string)
    song.artist_name = artist_string
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(@name)
    self.artist = artist
  end


end