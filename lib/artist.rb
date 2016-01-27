class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    @@all << self
  end

  def save
    @@all << self
  end

  def add_song(song)
    songs << song
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end


  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.find do |artist_instance|
      if artist_instance.name == name
        artist_instance
      else
        artist = Artist.new(name)
        artist.save
        artist
      end
    end
  end

end