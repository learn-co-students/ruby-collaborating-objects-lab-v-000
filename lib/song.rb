class Song
  
attr_accessor :name, :song, :artist, :newsong, :artists, :artist_inst

# @@all = []

def initialize(song, artistname=nil)
  @name = song
  @artist = artistname
  @artists = []
  @songs = []
  # @@all << self
  @artist_inst = ""
end
  
  
def self.new_by_filename(file_name)
  file_name = file_name.chomp('.mp3')
  song_name = file_name.split(' - ')
  
  @name = song_name[1]
  @artist = song_name[0]
  
  newsong = Song.new(@name, @artist)
  newsong.artist.name = @artist
  
  artistreturned = newsong.artist(newsong)
  newsong
end 
  
def artist(artist_name=nil)
  @artist_inst = Artist.find_or_create_by_name(artist_name)
  @artist_inst.add_song(artist_name)
  if !Artist.all.include? artist_inst
    Artist.all << @artist_inst
  end
  @artist_inst
end

end 



# Michael Jackson - Black or White - pop.mp3



