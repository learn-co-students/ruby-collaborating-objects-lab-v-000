class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    find = self.all.detect do |artist|
      artist.name == name
    end
    if find == nil
      self.new(name)
    end
  end

  def song_name
    self.songs.map {|song| song.name}
  end

  def print_songs
    puts "#{self.song_name.join("\n")}"
  end
end
