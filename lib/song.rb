class Song
  attr_accessor :artist, :name

def initialize(name)
  @name = name
end 

def artist_name
  if self.artist
    self.artist.name
  else
    return nil
end
end

def self.new_by_filename(file_name)
    song = self.new((file_name.split('-')[1]).split('.')[0].strip)
    song.artist.name = file_name.split('-')[0].strip
    song
end

end 

#def self.new_by_filename(song_name)
#    song = self.new(song_name)
#    song.name = ((song_name.split('-')[1]).split('.')[0].strip)
#    song.artist.name = song_name.split('-')[0].strip
#end