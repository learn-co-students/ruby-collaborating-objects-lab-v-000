class Artist
  @@all = []
attr_accessor :name, :songs, :all
  def initialize(name)
    @name = name
    @songs = []

  end
  def add_song(song)
    @songs << song
  end

  def self.save
    @@all << self

  end
  def self.create(name)

  end
  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
  def find_or_create_by_name
  end
  def print_songs
  end



end
