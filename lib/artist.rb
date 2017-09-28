class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    Artist.new(name)
  end

  def print_songs
    self.songs.each { |s| puts s.name }
  end

end
