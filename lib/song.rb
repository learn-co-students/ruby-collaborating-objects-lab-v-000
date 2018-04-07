
class Song
  attr_accessor :name, :artist


  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    new_song = Song.new(file_name.split(" - ")[1])
    new_artist = Artist.new(file_name.split(" - ")[0])
   return new_song
  end

end
