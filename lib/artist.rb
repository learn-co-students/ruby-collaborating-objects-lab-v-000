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

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end


  def self.find_or_create_by_name(name)
    if self.all.find{|song| song.name == name}.nil?
       artist = Artist.new(name)
       artist.save
       artist
    else
      self.all.find{|song| song.name == name}
    end
  end

  def print_songs
    @songs.each do |song|
        puts song.name
    end
  end
end
