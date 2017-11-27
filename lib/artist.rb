class Artist
  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @@all = []
    @@songs = []
  end

  def add_song(song)
    @@songs << song
    song = Song.new(song)
  end

  def songs
    @@songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.any?{|i| i.name == name}
      @@all.select{|i| i.name == name}
    else
      Artist.new(name)
    end
  end

  def print_songs
    self.songs.each do |i|
      puts i.name
    end
  end

end
