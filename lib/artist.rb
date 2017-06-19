class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # self.save
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if self.all.find {|artist| artist.name == name}
      self.all.find {|artist| artist.name == name}
    else
      self.new(name).tap {|artist| artist.save}
    end
  end

  def self.find_by_name(artist_name)
    self.all.detect{|artist| artist.name == artist_name}
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end


end
