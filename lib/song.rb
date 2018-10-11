require 'pry'
require_relative 'artist.rb'

class Song
  attr_accessor :artist_name, :artist, :name


  def initialize(name)
    @name = name
  end

  def self.artist=(name)
    @artist = Artist.find_or_create_by_name(name)
  end

  def artist_name=(name)
    @artist.name = name
  end

  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[1]
    new_song = Song.new(song_name)

    artist_filename = file_name.split(" - ")[0]
    new_song.artist = Artist.find_or_create_by_name(artist_filename)
    @artist = Artist.find_or_create_by_name(artist_filename)
    new_song.artist_name = artist_filename
    @artist_name = artist_filename

    @artist.save
    @artist.add_song(new_song)
    return new_song
    binding.pry
   end
end
