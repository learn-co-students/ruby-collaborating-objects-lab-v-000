class Artist

attr_accessor :name

@@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_one)
    @songs << song_one
    song_one.artist = self
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if artist_name = @@all.find {|x| x.name == name}
      artist_name
    else
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    @songs.each {|x| puts x.name}

  end

end
