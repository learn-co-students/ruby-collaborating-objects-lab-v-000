class Song
  attr_accessor :name 
  def initialize(name)
    @name = name
  end
  
  def new_by_filename(s_name_ext)
    song = self.new
    song_parts = s_name_ext.split("- ")
    song.name = song_parts[1].chomp(".mp3")
    song.artist_name = song_parts[0].chomp(" ")
    song
  end
  
  
end