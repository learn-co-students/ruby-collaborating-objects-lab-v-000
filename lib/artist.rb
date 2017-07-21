class Artist
  attr_accessor :name

    @@all =[]
    @@song_count = 0

    def initialize(name)
      @name = name
      @songs = []
    end

    def add_song(song)
      @songs << song
      @@song_count += 1
      song.artist = self
    end

    def songs
      @songs
    end

    def self.all
      @@all
    end

    def save
      self.class.all << self
    end

    def self.song_count
      @@song_count
    end

    def self.find_or_create_by_name(name)
    find = self.find_by_name(name)
    if find == nil
      self.create_by_name(name)
    else
      return find
    end
  end

  def self.find_by_name(name)
    @@all.detect {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    @@all << artist
    artist
  end

  def print_songs
    @songs.each{|song| puts "#{song.name}"}
  end
end
