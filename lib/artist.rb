require 'pry'
class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
      @name = name
      @songs = []
    end

    def add_song(song)
      @songs << song
    end

    def save
      @@all << self #instance of the class, tell the class Artist that it exists
    end

    def self.all
      @@all
    end

    def self.create(name)
      #binding.pry
      artist = self.new(name)
      artist.save
      artist
    end

    def self.find(name)
      self.all.find {|artist| artist.name == name}
    end

    def self.find_or_create_by_name(name) #Advanced class methods involved
      self.find(name) || self.create(name)
    end

    def self.print_songs
      self.all.each{|artist| puts "#{artist.name}"}
    end

end
