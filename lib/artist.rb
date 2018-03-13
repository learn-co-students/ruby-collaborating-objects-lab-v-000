class Artist

  attr_accessor :name, :songs
  @@all =[]


  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def songs
    @songs
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    matching_artist = @@all.select{|artist| artist.name == name}[0] # an artist or nil
    if !matching_artist then
      matching_artist = self.new(name)
    end
    matching_artist
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each {|song| puts song.name }
  end

end
