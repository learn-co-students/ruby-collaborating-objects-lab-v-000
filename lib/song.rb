class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist,song = filename.split(" - ")
    new_song = self.new(song)
    #below code is where we send the artist string to the
    #artist_name=(name) method
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    #below code is where you assign the song an artist object.
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
#new_song = self.new(song)
#crazy_in_love = Song.new("Crazy in Love")

#new_song.artist_name = artist
#crazy_in_love.artist_name("beyonce")

#crazy_in_love.artist = Artist.find_or_create_by_name("Beyonce")
#Artist.find("Beyonce") || Artist.create("Beyonce")

#If Artist.find("Beyonce"), @@all.find{|artist|artist.name == "Beyonce"}
#returns artist object with name "Beyonce"
#Then add the song to the Beyonce's repertoire
#aka beyonce.add_song(crazy_in_love)
#beyonce.songs => ["Crazy in Love"]

#If Artist.create("Beyonce"), artist = Artist.new("Beyonce")
#artist.save or @@all << artist
#return the artist object
#Then add the song to Beyonce's repertoire
#aka artist.add_song(crazy_in_love)
