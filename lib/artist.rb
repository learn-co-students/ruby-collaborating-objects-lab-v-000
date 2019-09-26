class Artist
  attr_accessor :songs, :name

  @@all = []
  

  def initialize(name=nil)
    @name = name
    @songs=[]
    self.save
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.any? {|artist| artist.name == name}
      @@all.find {|artist| artist.name == name}
    else
      artist_1 = Artist.new(name)
    end
  end

  def print_songs
    song_names = @songs.collect{|song| song.name}
    puts song_names.join("\n")
  end

end



