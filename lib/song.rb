class Song

 attr_accessor :name, :artist

def initialize(name)
  @name = name

end

def self.new_by_filename(file_name)
  #file name example: Beyonce - Countdown - pop.mp3
  #must do 3 things: parse filename to find song name and artist name, connect song to artist

  file_split = file_name.split(" - ") #=> ["Beyonce", "Countdown", "pop.mp3"]
  song = self.new(file_split[1])
  song.artist_name=(file_split[0])
  song
  
end

def artist_name=(name)
  #turn artist name into artist object @name and find/create artist instance
  #assign song to artist by using #add_song
  self.artist = Artist.find_or_create_by_name(name)
  self.artist.add_song(self)
  
end




end




