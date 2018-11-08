class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
end

def self.new_by_filename(filename)
 song_details = filename.chomp(".mp3").split(" - ")
 song = Song.new(song_details[1])
 song.artist_name = song_details[0]
 song
end


end
