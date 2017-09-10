class Artist

attr_accessor :name
attr_reader :songs
@@all = []
@@artist_names = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(name)
    self.songs << name

  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(title_name)
    if self.all.detect {|instance| instance.name == title_name} #searches that titlename matches instance name
      self.all.detect {|instance| instance.name == title_name}  #needs to return Arist instance
    else
      self.new(title_name) #if doesn't exist, create new Artist
    end
  end

  def print_songs
    self.songs.each{|song| puts song.name}
  end

end
