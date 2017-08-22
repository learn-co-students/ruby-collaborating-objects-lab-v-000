class Artist
  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.find do |artist|
      if artist.name == name
      else
        self.new(name)
      end
    end
  end

  def add_song(song)
    self.songs << song
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end

end
