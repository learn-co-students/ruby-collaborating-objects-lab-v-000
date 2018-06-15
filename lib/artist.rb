class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    song.artist = self unless song.artist == self 
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.detect{|artist| artist.name == name}

    else
      artist = Artist.new(name)

    end

  end

    def print_songs
      @songs.each {|song| song.name
        puts "#{song.name}"}
    end
end
