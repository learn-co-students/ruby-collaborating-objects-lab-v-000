class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    return song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(artist_name)
    self.all.each do |artist|
      if artist.name == artist_name
        return artist
      end
    end

    artist = self.new(artist_name)
    artist.save
    return artist
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end

end
