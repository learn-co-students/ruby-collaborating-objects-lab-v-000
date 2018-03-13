class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    parsed =  filename.split('-')
    artist = parsed[0].strip
    name = parsed[1].strip
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.songs << song
    song
  end
  
end