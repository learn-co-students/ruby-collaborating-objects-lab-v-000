class Artist
  attr_accessor :name, :songs
  @@all =[]
  def initialize(name)
    @name = name
    @songs = []

  end
  def self.all
    @@all
  end
  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find(name)
    self.all.find{|a| a.name.to_s == name}
  end

  def self.create(name)
    self.new(name).tap{|artist|artist.save}
  end

  def self.find_or_create_by_name(name)
     self.find(name).nil? ? self.create(name) : find(name)
  end

  def print_songs
   self.songs.map{|s| puts s.name}
 end

end
