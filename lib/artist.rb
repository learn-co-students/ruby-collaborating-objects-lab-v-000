class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
    found = @@all.find do |artist|
      artist.name == name
    end

    if found
      found
    else
      Artist.new(name).save
    end

  end

  def print_songs
    self.songs.collect do |song|
      puts song.name
    end
  end


end
