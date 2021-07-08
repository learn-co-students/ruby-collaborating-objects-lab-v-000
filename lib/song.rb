class Song

  attr_accessor :name, :artist

  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])    
    song.artist = Artist.new(file_name.split(" - ")[0])
    song        
  end

  def initialize(song_title)
    @name = song_title
  end



end