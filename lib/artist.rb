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

  def self.find_or_create_by_name(name)
    if  self.all.find {|artist| artist.name == name }
      self.all.find {|artist| artist.name == name }
    else
      self.new(name).save
      self.all.find {|artist| artist.name == name }
    end
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end



end
