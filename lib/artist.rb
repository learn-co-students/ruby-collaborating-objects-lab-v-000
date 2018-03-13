class Artist
  attr_accessor :name,:songs
  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    found = @@all.detect{|artist| artist.name == name}

    if found
      found
    else
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.each {|song|
      puts "#{song.name}"
    }
  end

end
