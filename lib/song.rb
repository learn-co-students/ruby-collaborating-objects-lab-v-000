class Song
  attr_accessor :name, :artist
  
  # CLASS
  def self.new_by_filename(file)
    # PARSE & ASSIGN
    data = file.split(" - ")
    
    artist_str = data[0]
    name = data[1]
    artist = Artist.find_or_create_by_name(artist_str)
    # CREATE & RELATE
    song = self.new(name)
    song.artist = artist
    artist.add_song(song)
    song
  end
  
  # INSTANCE
  def initialize(name)
    @name = name
  end 
  
end