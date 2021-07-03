class Artist
@@all = []

attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(find_artist)
    result = @@all.find{|artist| artist.name == find_artist}
    if result
      result
    else
      result = self.new(find_artist)
      result.save
      result
    end
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end

  def self.all
    @@all
  end
end
