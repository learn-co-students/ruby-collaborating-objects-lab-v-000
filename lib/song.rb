require "pry"
class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_info = filename.split("-" || ".").collect{|x| x.strip}
    song = self.new(song_info[1])
    song.genre = song_info[2]
    song.artist = Artist.find_or_create_by_name(song_info[0])
    song.artist.add_song(song)
    song
  end

end
