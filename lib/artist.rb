class Artist
  attr_accessor :name, :songs
   @@all = []
  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
      song.artist = self
      @songs << song
  end

  def self.find_or_create_by_name(artist_name)
    if all.detect{|instance| instance.name == artist_name}
      all.detect{|instance| instance.name == artist_name}
    else
       artist_instance = Artist.new(artist_name)
    end
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
