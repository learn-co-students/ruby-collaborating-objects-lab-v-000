class Artist
  attr_accessor :name, :songs
  @@all = []
  def self.all
    @@all
  end
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
  def self.find(find_it)
    song = @@all.find{|song| song == find_it}
    song
  end
  def self.create(create_it)
    artist = Artist.new
    artist.name = create_it
    artist.save
    artist
  end
  def self.find_or_create_by_name(string)
    found = self.find(string)
   created = self.create(string)
    if found
      return found
     else 
       return created
     end
  end
end