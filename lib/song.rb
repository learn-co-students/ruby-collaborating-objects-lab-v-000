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
    split_song_name = file_name[/-\s(.*?)\s-/, 1]
    split_artist_name = file_name[/\b(.*?)\s-\s/, 1]
    
    song = self.new(split_song_name)
    song.artist_name = split_artist_name
    song
  end

end