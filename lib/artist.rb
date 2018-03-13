
class Artist

  attr_accessor :name, :songs

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song

  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
  	array = []
    self.all.each do |person|
    	if person.name == artist_name
    		array << person
    	end
    end
    if array.length == 0
      artist = self.new(artist_name)
      artist.save
      artist
    else
      array[0]
    end
  end

  def print_songs
    songs.each { |song| puts song.name}
  end
end
