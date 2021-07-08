class Artist
  attr_accessor :name, :songs

  @@all = Array.new # all artists created list

  def initialize(name)
    @name = name
    @songs = Array.new
    save()
  end

  def add_song(new_song)
    @songs << new_song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    found_artist = @@all.detect do | artist |
      artist.name == artist_name
    end

    if found_artist == nil
      found_artist = Artist.new(artist_name)
      ## end if
    end

    found_artist #return found_artist
    ##end find_or_create_by_name
  end

  def print_songs
    @songs.each do | song |
      puts song.name
    end
  end

end
