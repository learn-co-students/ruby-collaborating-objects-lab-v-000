class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    unless @@all.include? self
      self.class.all << self
    end
  end

  def self.find(artist_name)
    @@all.find {|artist| artist.name == artist_name }
  end


   def self.create(artist_name)
     artist = self.new(artist_name)
     artist.name = artist_name
     artist
   end

  def self.find_or_create_by_name(artist_name)
    if self.find(artist_name)
      return self.find(artist_name)
    else
      self.create(artist_name)
    end
  end

  def print_songs
    @songs.each do |song|
       puts song.name
     end
  end

end
