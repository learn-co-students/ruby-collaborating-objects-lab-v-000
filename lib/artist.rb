class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song_instance)
    @songs << song_instance
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.detect do |artist_instance|
      if artist_instance.name == name
        artist_instance
      elsif artist_instance.name != name
        self.new(name)
      end
    end
  end

  def print_songs
    @songs.each do |song_instance|
      puts "#{song_instance.name}"
    end
  end

end
