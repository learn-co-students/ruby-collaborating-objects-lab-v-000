class Artist
  attr_accessor :name, :songs
  @@all = [] #array of all artist instances
  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    is_true = @@all.any?{|i| i.name = name}
    if is_true == true
       return @@all.find{|i| i.name = name}
    else
      artist = Artist.new(name)
      artist.save
      return artist
      binding.pry
    end
  end

  def print_songs
    @songs.each {|song| print "#{song.name}\n"}
  end
end
