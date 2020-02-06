require('pry')
class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def self.find_or_create_by_name(artist_name)
    # Find the artist instance that has that name
      return_artist = nil
      @@all.find do |item|
        if item.name == artist_name
          return_artist = item
        end
      end
    # OR create one if it doesn't exists
      if return_artist == nil
        return_artist = self.new(artist_name)
        return_artist.save
      end
    # Return value = instance of artist with name filled out
      return_artist
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
