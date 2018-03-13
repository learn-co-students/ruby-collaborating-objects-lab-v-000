require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    split_file = file.split(" - ")
    current_song = Song.new(split_file[1])
    current_song.artist = Artist.find_or_create_by_name(split_file[0])
    #binding.pry
    current_song
  end

end
