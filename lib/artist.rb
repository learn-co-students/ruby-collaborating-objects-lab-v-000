class Artist
  attr_accessor :name, :songs
  
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
  @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def Artist.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name 
        artist
      else
        return Artist.new(name)
      end
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end


end