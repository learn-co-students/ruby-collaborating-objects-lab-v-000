class Artist
  
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
    def initialize(name)
      @name = name
      @songs = []
      @@all << self
    end
    
    def self.all
        @@all
    end
    
    def add_song(song)
      if !@songs.include?(song)
        @songs << song
      end
    end
    
    def self.find(name)
      @@all.detect{|a| a.name == name}
    end
    
    def songs
      @songs
    end
      
    def save
      @@all << self
      self
    end
    
    def self.find_or_create_by_name(name)
      self.find(name) ? self.find(name) : self.new(name)
    end
    
    def print_songs
      @songs.each do |song|
        puts song.name
      end
    end
    
end