class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    self.songs = []
    self.save
  end

  def self.all
    @@all
  end


  def self.find_or_create_by_name(artist_name)
    if self.all.find{|w| w.name == artist_name} == nil
       self.new(artist_name)
     else
       self.all.find{|w| w.name == artist_name}
     end
   end


  def songs
    @songs
  end

  def save
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song unless @songs.include?(song)
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end
















end
