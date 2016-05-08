require'pry'
class Song

  attr_accessor :name, :title, :artist

  def initialize(name)
    @name = name
  end

  #def self.artist(name)
  #  if self.artist == nil
  #    self.artist = Artist.new(name)
  #  else
  #    self.artist.name = name
  #  end
  #end

  def self.new_by_filename(file_name)
    title = file_name.split(" - ")[1]
    name = file_name.split(" - ")[0]
    song = self.new(title)
    song.artist = Artist.find_or_create_by_name(name)
    song
    #self.artist.name = name
  end




end