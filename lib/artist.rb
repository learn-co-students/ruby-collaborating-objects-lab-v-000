class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each { |song| puts "#{song.name}"}
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    song
  end

  def self.find_or_create_by_name(name)
    if @@all.empty?
      new_artist = self.new(name)
      new_artist.save
      new_artist
    else
      @@all.each do |artist|
        if artist.name == name
          return artist
        end
      end
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end
  end

end
