class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
  	@name = name
  	@songs = []
    save
  end

  def self.all
    @@all
  end

  def self.artist
    self
  end

  def save
  	@@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
  	if (@@all.detect{|person| person.name == name})
      @@all.detect{|person| person.name == name}
  	else
  	  artist = Artist.new(name)
  	end
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end
end