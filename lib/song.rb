class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(file_name)
    name = file_name.split(' - ')[1]
    artist = Artist.new(file_name.split(' - ')[0])
    new_song = self.new(name)
    new_song.artist = artist
    artist.songs << new_song
    new_song
  end
  
end