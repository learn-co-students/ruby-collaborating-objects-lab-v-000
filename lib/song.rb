class Song


attr_accessor :name, :artist

def initialize(name) #=> allows instances of songs to be created
@name = name
end

def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    #this is calling the #artist_name=
    #it is a writer method that assigns that variable to artist
    #you are not just assigning the string to artist, because you want the artist attribute to be an artist instance instead
    song.artist_name = artist
    song
  end



def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)   #after the artist instance is returned
    #this method calls the artist instance method add_song
    #add_song adds this current song instance to the artist's song list
    self.artist.add_song(self)
  end


end
