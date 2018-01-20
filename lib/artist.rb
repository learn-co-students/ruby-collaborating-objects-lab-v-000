require 'pry'
class Artist
   attr_accessor :name
   attr_reader :songs
   @@all = []

   def initialize(name)
      @name = name
      @songs = []
      save
   end

   def save
      @@all.push(self)
   end

   def print_songs
      @songs.each{|song| puts song.name}
   end

   def add_song(song)
      @songs.push(song)
   end

   def self.all
      @@all
   end

   def self.find_or_create_by_name(name)
      self.all.find {|artist| artist.name == name } || self.new(name)
   end

end
