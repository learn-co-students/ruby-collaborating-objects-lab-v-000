class Artist

  attr_accessor :name


  @@all = []

  def initialize(artist_name)
     @name = artist_name
     @songs = []
     self.save
   end

   def add_song(song)
     self.songs << song
   end

   def songs
     @songs
   end

   def save
     @@all << self
   end

   def self.all
     @@all
   end

   def self.find_or_create_by_name(artist_name) # => artist_name input is a string
     if @@all.detect {|artist| artist.name == artist_name }
       artist = @@all.detect {|artist| artist.name == artist_name }
       artist
     else
       artist = self.new(artist_name)
       artist
     end
   end

   def print_songs
     self.songs.each {|artist| puts artist.name}
   end

 end
