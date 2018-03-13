require 'pry'
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
      artist_name = file.scan(/\A\w*\s*\w*\w*\s*\w*\s*\b/).join("")
      song = file.scan(/-\s\w*\s*\w*\s*\w*\s*-/).join("").delete("-").strip
      new_song = self.new(song)
      new_artist = Artist.new(artist_name)
      new_song.artist = new_artist 
      new_song     
  end
end





