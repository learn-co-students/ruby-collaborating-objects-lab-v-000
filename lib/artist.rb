class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end


  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    name_arr = @@all.select{|artist| artist.name == name }
      if name_arr.size == 0
        new_artist = Artist.new(name)
        new_artist.save
        new_artist
      else
        name_arr[0]
    end
   end

def print_songs
   self.songs.each{|tune| puts tune.name}
end


end
