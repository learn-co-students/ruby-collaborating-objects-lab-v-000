require 'pry'
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    title = data[1]
    artist_ = data[0]
    new_instance = self.new(title)
    new_instance.name = title
    new_instance.artist_name = artist_
    new_instance
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def artist_name
    self.artist.name
  end
end