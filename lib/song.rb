class Song
  attr_accessor :name, :artist
  attr_reader :artist_name
  
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def save
    @@all << self
    self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file)
    parse_file = file.split(" - ")
    new_song = self.new(parse_file[1])
    new_song.artist_name = (parse_file[0])
    new_song.save
  end
  
end