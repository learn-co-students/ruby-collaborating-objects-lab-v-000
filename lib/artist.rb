class Artist
   attr_accessor :name
   @@all = []

   def initialize(name)
     @name = name
     @songs = []
   end

   def add_song(song)
     song.artist = self
     @songs << song
   end

   def songs
     @songs
   end

   def save
     @@all << self unless @@all.include?(self)
   end

   def print_songs
     songs.each { |song| puts song.name }
   end

   def self.all
     @@all
   end

   def self.find_or_create_by_name(name)
     find(name) || self.new(name)
   end

   def self.find(name)
     all.detect { |artist| artist.name == name }
   end

 end
