require_relative 'artist.rb'
require_relative 'mp3_importer.rb'
require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    file_array = file.split(%r{ - })
    file_array[-1].slice!(".mp3")
    song = Song.new(file_array[1])
    song.artist = Artist.new(file_array[0])
    song
  end
end
