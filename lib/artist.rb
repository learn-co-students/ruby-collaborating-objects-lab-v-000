class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song_obj)
    self.songs << song_obj
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each {|song_obj| puts song_obj.name}
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.find{|artist_obj| artist_obj.name == artist_name}
      @@all.find{|artist_obj| artist_obj.name == artist_name}
    else self.new(artist_name)
    end
  end

  def self.all
    @@all
  end

end
