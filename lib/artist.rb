class Artist

  attr_accessor :name, :songs
  attr_reader :all

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

  def self.find_or_create_by_name(artist)
      if @@all == [] || !@@all.detect {|artist_instance| artist_instance.name == artist}
        new_artist = Artist.new(artist)
        new_artist.name = artist
        new_artist.songs = []
        new_artist.save
        return new_artist
      else
        @@all.each do |artist_entry|
          if artist_entry.name == artist
            return artist_entry
          end
        end
      end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
