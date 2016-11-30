class Artist

@@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

   def songs
     @songs
   end

   def self.find_or_create_by_name(name)
     if
      @@all.detect { |artist| artist.name == name}
       @@all.detect { |artist| artist.name == name}
     else
       Artist.new(name)
     end
   end

   def print_songs
     songs.each {|song| puts song.name}
   end


end
