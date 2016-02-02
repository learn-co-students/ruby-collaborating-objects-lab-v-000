class Artist
   attr_accessor :name, :songs
   @@all = []

   def initialize(name)
     @name = name
     @songs = []
   end

   def save
     @@all << self
   end

   def add_song(song)
     @song = song
     @songs << song
   end

   def self.find_artist(name)
     self.all.find { |artist| artist.name == name }
   end

   def self.create_artist(name)
     new_artist = Artist.new(name)
     self.all << new_artist
     new_artist
   end

   def self.find_or_create_by_name(artist_name)
     self.find_artist(artist_name) || self.create_artist(artist_name)
   end

   def print_songs
     @songs.each { |song| puts song.name }
   end

   def self.all
     @@all
   end
   
 end
