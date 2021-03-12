class Song 
  attr_accessor :name, :files, :artist 
    
  def initialize(name)
    @name = name 
  end 

  def self.new_by_filename(file_name)
    file_name = file_name.split('-')
    new_artist = file_name[0].strip
    

    new_song = Song.new(file_name[1].strip)
    new_song.artist = Artist.new(new_artist)
    new_song.artist.name = new_artist
    new_song

  end 



end 