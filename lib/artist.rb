class Artist
  attr_accessor :name
  @@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
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

  def self.find_or_create_by_name (name)
    if @@all.detect { |artist| artist.name == name}
      @@all.detect { |artist| artist.name == name}
    else
      self.new(name).tap {|artist| artist.save}
   end
 end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end
