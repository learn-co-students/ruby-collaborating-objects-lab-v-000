require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    # @artist = artist
  end

  def self.new_by_filename(filename)
    file_array = filename.split(' - ')
    name = file_array[1]
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(file_array[0])
    song.artist.add_song(song)
    song
  end

end
