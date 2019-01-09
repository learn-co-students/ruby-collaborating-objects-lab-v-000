require 'spec_helper'
require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
  end

  def self.new_by_filename(file_name)
  file_song = self.new(file_name.split(/\s-\s/)[1])
  artist_name = file_name.split(/\s-\s/)[0]
  file_song
  end

  def artist_name(artist_name)
    self.artist.all = Artist.find_or_create_by_name(artist_name)
    self.artist.add_song(self)
  end

end
