class Artist
  attr_accessor :name, :song_name

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

    def songs
      @songs
    end

    def add_song(song_name)
      @songs << song_name
    end

    def self.find_by_name(name)
      self.all.detect {|a| a.name == name}
    end

    def self.create_by_name(name)
      artist = self.new(name)
      artist.save
      artist
    end

    def self.find_or_create_by_name(name)
      if !self.find_by_name(name)
        self.create_by_name(name)
      else
        self.find_by_name(name)
      end
    end

    def print_songs
      self.songs.each{|a| puts a.name}
    end

end # => End Artist Class
