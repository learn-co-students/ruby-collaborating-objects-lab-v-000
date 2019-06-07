
class Artist

  @@all = []

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    data = file.split("/").last
    artist = data.split(" - ")[0].strip
    Artist.find_or_create_by_name(artist)
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find{|artist| artist.name == name}
    !!artist ? artist : Artist.new(name)
  end

  attr_accessor :name, :songs


  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end


  def print_songs
    self.songs.each{|song| puts song.name}
  end


end
