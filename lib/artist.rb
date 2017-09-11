class Artist

  attr_accessor :name
  @@song_count=0
  @@all = []

  def initialize(name="Placeholder")
    @songs = []
    @name = name
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def save
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    artist = Artist.new(name)
    artist.save
    artist
  end

end
