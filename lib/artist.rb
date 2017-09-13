class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    # artist = nil
    # @@all.each { |e|
    #   if e.name.include?(artist_name)
    #     artist = e
    #   else
    #     artist = Artist.new(artist_name)
    #     artist.save
    #   end
    # }
    # artist
    @@all.detect {|e| e.name == artist_name} || self.new(artist_name)

  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each {|e| puts e.name}
  end

end
