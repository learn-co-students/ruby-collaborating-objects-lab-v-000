class Artist
  attr_accessor :name, :songs
  

  @@all = {}
  @@song_count = 0



  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end


  def self.find_or_create_by_name(name)
    # binding.pry
    @@all.detect{|artist, songs| artist.name == name
# binding.pry

      } ? @@all[name] : Artist.new(name)
      # binding.pry
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end

  def save
    @@all[self] ||= @songs
  end
  
  def self.all 
    @@all
  end

  def self.song_count
    @@song_count
  end


end
