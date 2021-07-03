require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    split_file = file_name.split(" - ")
    this_song = Song.new(split_file[1])
    this_artist = Artist.find_or_create_by_name(split_file[0])
    this_artist.add_song(this_song)
    this_song
  end

end
