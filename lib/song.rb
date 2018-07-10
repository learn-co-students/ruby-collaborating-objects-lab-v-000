class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(filename)
    new_song = self.new(filename.split(" - ")[1])
    new_song.artist =  Artist.find_or_create_by_name(filename.split(" - ")[0])
    new_song.artist.add_song(new_song)
  #  binding.pry
    new_song
  end

  def self.all
    @@all
  end
end
