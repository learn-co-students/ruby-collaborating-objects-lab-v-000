require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_name = file_name.split(" - ")
    new_instance = self.new(file_name[1])
    self.artist_name=(file_name[0])
  end

  def self.artist_name=(name)
    new_instance = Artist.find_or_create_by_name(name)
    new_instance.add_song(self)
    new_instance
  end
end

#Song.new_by_filename('Michael Jackson - Black or White - pop.mp3')
