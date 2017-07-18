require 'pry'
#learn spec/song_spec.rb
class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file_name)
    new_song= self.new(file_name.split("- ")[1].strip!)
    new_song.artist = Artist.find_or_create_by_name(file_name.split("-")[0].strip!)
    new_song.artist.songs << new_song
    new_song
  end

end
