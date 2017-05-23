class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each { |s| puts s.name }
  end

  def self.find_or_create_by_name(name)
    if @@all.detect { |a| a.name == name }
      @@all.detect { |a| a.name == name }
    else
      created_by_name = new(name)
      created_by_name.save
      created_by_name
    end
  end
end
