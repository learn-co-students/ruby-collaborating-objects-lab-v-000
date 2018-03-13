

class Song


  # x.split(/\s*-\s*/)

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    name = file.split(/\s*-\s*/)
    song = Song.new(name[1])
    song.artist = Artist.find_or_create_by_name(name[0])
    song
  end

end