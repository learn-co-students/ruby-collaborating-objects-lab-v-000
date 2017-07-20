class Artist
  attr_accessor :name, :songs

  # class variables
  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs.push(song) unless self.songs.include?(song)
    song.artist = self unless song.artist
  end

  def save
    self.class.all.push(self)
  end

  def self.all
    @@all
  end

  def self.find(name)
    self.all.find{|artist| artist.name == name}
  end

  def self.create(name)
    self.new(name).tap{|artist| artist.save}
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def print_songs
    self.songs.each{|song| puts song.name}
  end
end
