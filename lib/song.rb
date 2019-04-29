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

  def self.new_by_filename(file_name)
    new_instance = Song.new(file_name.scan(/(\w+\s\w+\s\w+)/).join)
    # artist_name(name)
  end

  def artist_name=(name)
    Artist.find_or_create_by_name(name)
    Artist.add_song(song)
  end

end
