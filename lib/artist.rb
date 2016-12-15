class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all ||= []
  end

  def self.all
    @@all 
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    result = @@all.index{|artist| artist.name == name}
    if result == nil
      result = self.new(name)
      result.save
    else
      result = @@all[result]
    end
    result
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each{|song| puts(song.name)}
  end
end