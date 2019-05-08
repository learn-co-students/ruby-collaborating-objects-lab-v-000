class Song
  attr_accessor :artist, :name, :file_name, :mp3mporter
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(name)
    # binding.pry
    new_instance = self.new(name.scan(/(\w+\s\w+\s\w+)/).join)
    # artist_instance = Artist.new(name.scan(/^(\w+ \w+)/).join)
    file_artist_name = name.scan(/^(\w+ \w+)/).join
    # binding.pry
    new_instance.artist_name = file_artist_name
    new_instance
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
  # binding.pry
end
