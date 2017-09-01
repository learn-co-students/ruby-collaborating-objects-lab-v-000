require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []
  @songs = []

  def initialize(name)
      @name = name
      @songs = []
    end

    def self.all
      @@all
    end

    def add_song(song)
      @songs << song
    end

   def save #adds artist instance to @@all
     @@all<<self
   end

   def self.find_or_create_by_name(name)
     self.find(name) ? self.find(name) : self.create(name)
   end

   def self.find(name)
     self.all.find {|artist| artist.name == name }
   end

   def self.create(name)
     self.new(name) {|artist| artist.save}
   end

  def print_songs #lists all of the artist's songs
      songs.each do |song|
      puts song.name
    end
  end


end
