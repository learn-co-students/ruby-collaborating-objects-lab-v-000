class Artist
  attr_accessor :name

    @@all = []

    def initialize(name)
      @name = name
      @songs = []
    end

    def self.all
      @@all
    end

    def save
      self.class.all << self
    end

    def add_song(song)
      @songs << song
    end

    def self.create
      artist = Artist.new(name)
      artist.save
      artist
    end

    def self.create_by_name(artist_name)
      artist = self.create
      artist.name = artist_name
      artist
    end

    def self.find_by_name(artist_name)
      self.all.detect{|a| a.name == artist_name}
    end

    def self.find_or_create_by_name(artist_name)
      self.find_by_name(artist_name) || self.create_by_name(artist_name)
    end

    def songs
      @songs
    end

    def print_songs
      songs.each {|s| puts s.name}
    end
end
