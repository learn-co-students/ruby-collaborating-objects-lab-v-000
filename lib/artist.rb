class Artist
  attr_accessor :name, :songs
  @@all =[]

  def self.all
    @@all
  end

  def initialize (name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.find_or_create_by_name(name_as_string)
    if @@all == []
      new_artist = Artist.new(name_as_string)
      return new_artist
    end
    @@all.each do |artist|
      if artist.name == name_as_string
        return artist
      end
    end
    #If @@all isn't empty and there is no match in @@all
    new_artist = Artist.new(name_as_string)
    return new_artist
  end

  def add_song(new_song)
    self.songs << new_song
  end

  def save
    Artist.all << self
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end