class Artist
  attr_accessor :name, :songs
  @@all = []

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

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
     current_artist = self.all.find {|artist| artist.name == name}
       if current_artist != nil
         current_artist
       else
         new_artist = self.new(name)
         new_artist.save
         new_artist
       end
     end

     def print_songs
    songs.each {|song| puts song.name}
  end
end
