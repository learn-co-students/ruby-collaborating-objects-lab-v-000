class Song
  attr_accessor :genre, :name
  attr_reader :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self) #if the song is already there, don't include it so that you don't have 5 instances of "Halo", for example.
  end

  def self.new_by_filename(filename)
    artist_name, song_name, genre_name =filename.chomp(".mp3").split(" - ")
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.genre = genre_name
    song.save
  end

end

# require 'pry'

# class Song
#   attr_accessor :name, :artist

#   def initialize(name) 
#     @name = name 
#     @artist = nil #the song doesn't have a relationship with the artist yet.
#     end

#   def artist_name=(artist_name)
#     a = Artist.find_or_create_by_name(artist_name)
#     a.add_song(self)
#     self.artist = a
#   end
  
  
#   def self.new_by_filename(file_name)
#     song = file_name.split(" - ")[1]
#     artist = file_name.split(" - ")[0]
#     new_song = self.new(song)
#     new_song.artist_name = song 
#     new_song
#   end
  
#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#     artist.add_song(self)
#   end


# end



# =begin 
# class Song

#   attr_accessor :name, :artist

#   def initialize(name)
#     @name = name
#   end

#   def self.new_by_filename(file_name)
#     song = file_name.split(" - ")[1]
#     artist = file_name.split(" - ")[0]
#     new_song = self.new(song)
#     new_song.artist_name = song 
#     new_song
#   end

#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#     artist.add_song(self)
#   end

# end 
# =end 

# =begin
# class Song
#   attr_accessor :name, :artist
#     @@all = []

  
#   def initialize(name)
#     @name=name
#   end
  
#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#     artist.add_song(self)
#   end
  
# =begin

#   def artist_name=(artist_name)
#     if self.artist == nil
#       self.artist = Artist.find_or_create_by_name(artist_name)
      
#     else 
#       self.artist.name = artist_name
#     end 
#   end
# =end
# =begin
  
#   def self.new_by_filename(filename)
#     long_song_name = []
#     long_song_name = filename.split(" - ")
#     artist_name_extracted = long_song_name[0]
#     song_name = long_song_name[1]
    
#     new_song_instance = self.new(artist_name_extracted)
#     new_song_instace.name = song_name
#     new_song_instance.artist = artist_name_extracted
#     new_song_instance
    

  
# end
# end
# =end