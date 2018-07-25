class Song
  attr_accessor :artist, :name
  #attr_reader :title, :filename  #only need to read titles, dont need to write them

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    song = self.new(split_name[1])
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
    artist.add_song(song)
    song
  end

  #def artist_name(name) #helper method to associate that new song with an artist (within the Song methd!)
  #end

end
