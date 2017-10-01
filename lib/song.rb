require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist_name = file_name[/^([^-]+)\w/]
    song_name = file_name[/- .+ -/]
    song_name.slice!("- ")
    song_name.slice!(" -")
    new_song = Song.new(song_name)
    new_song.artist = Artist.new(artist_name)
    new_song
  end



end
