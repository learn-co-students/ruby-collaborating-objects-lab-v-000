class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
  end
 
  def self.new_by_filename(file_name)
    a_and_s = file_name.split(" - ")
    a = a_and_s[0]
    s = a_and_s[1].chomp('.mp3')
    song = self.new(song)
    song.name = s
    song.artist_name = a
    song
  end
  
end