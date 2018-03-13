require 'pry'
class Song
  attr_accessor :title, :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    parsed_file_name = file_name.split(" - ")
    song = self.new(parsed_file_name[1])
    song.artist_name=(parsed_file_name[0])
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.songs << self
  end

end
