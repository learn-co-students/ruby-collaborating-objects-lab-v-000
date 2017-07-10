class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find(name)
    self.all.find{|artist| artist.name == name}
  end

  def self.create(name)
    ### You need to review this and ask for more examples of .tap ###
    self.new(name).tap {|artist| artist.save}    
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
