class Artist
  attr_accessor :name, :song, :songs

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

  def self.create_by_name(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_by_name(name)
      self.all.detect{|artist| artist.name == name}
    end


    def self.find_or_create_by_name(name)
      if self.find_by_name(name) == nil
        self.create_by_name(name)
      else
        self.find_by_name(name)
      end
    end

    def add_song(song)
      @songs << song
      song.artist = self
    end

    def songs
      @songs
    end

    def print_songs
      @songs.each do |song|
        puts "#{song.name}"
      end
    end



end
