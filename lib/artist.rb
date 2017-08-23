

class Artist
  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    result = @@all.find {|artist| artist.name == name}
    if result
      result
    else
      self.create(name)
    end

    # @@all.find do |artist|
    #   if artist.name == name
    #   else
    #     self.new(name)
    #   end
    # end
  end

  def add_song(song)
    self.songs << song
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end

end
