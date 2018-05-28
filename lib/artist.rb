class Artist

  @@all = []
  attr_accessor :name, :songs


  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

    matching_artist = nil
    @@all.each do |artist|
      if artist.name == name
        matching_artist = artist
      end
    end

    if matching_artist == nil
      matching_artist= Artist.new(name)
      matching_artist.save
      matching_artist
    end
    matching_artist

  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end


end
