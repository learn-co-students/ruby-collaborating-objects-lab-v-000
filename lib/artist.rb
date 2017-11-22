class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end


  def self.find_or_create_by_name(name)
  self.find(name) ? self.find(name) : self.create(name)
  end

    def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def print_songs
    self.songs.each{|song| puts song.name}
  end
end
