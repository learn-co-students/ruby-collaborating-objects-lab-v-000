class Artist
  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
    save
  end

  def add_song(song)
    @songs << song
    song.artist=self
  end

  def songs
    @songs
  end

  def save
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    new_artist =Artist.new(name)
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}\n"
    end
  end

end
