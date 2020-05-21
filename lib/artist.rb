class Artist
  attr_accessor :name
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self

  end
  def self.all
    @@all
  end
  def add_song(song)
    song.artist = self
  end
  def songs
   Song.all.select {|song| song.artist == self}
  end
  def self.find_or_create_by_name(name)
    new_artist = nil
    @@all.each do |artist|
      if artist.name == name
        new_artist = artist
      end
    end
    if new_artist == nil
      new_artist = Artist.new(name)
    end
    new_artist
  end
 def print_songs
   self.songs.each do |song|
     puts song.name
   end
 end

end
