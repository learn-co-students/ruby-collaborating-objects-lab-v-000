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

  def add_song(song_name)
    song_name.artist = self
    @songs << song_name
   end

  def save
    self.class.all << self
    
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.detect do |x|
      x.name == name
    end
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end


end


















