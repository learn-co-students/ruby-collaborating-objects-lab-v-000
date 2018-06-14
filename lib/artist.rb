class Artist
   @@all = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
    self.save

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
  def self.find_or_create_by_name(nam)

    if  (@@all.detect {|aux| aux.name == nam} != nil)

       @@all.detect {|aux| aux.name == nam}

    else
        Artist.new(nam)

    end


  end
  def print_songs
    self.songs.each { |obj|
      puts obj.name
    }
  end

end
