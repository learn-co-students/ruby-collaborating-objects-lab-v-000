class Song

  attr_accessor :artist, :name, :song, :file_name, :artist_name

  def initialize(name)
    @name = name

  end


  def self.new_by_filename(file_name)
    song = Song.new 
    song.name = file_name.split("-")[1]
    song.artist.name = file_name.split("-")[0]
  end



end