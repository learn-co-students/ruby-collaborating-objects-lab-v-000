class Song

attr_reader :name, :artist

@@all = []

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

def artist(song)
  song = Artist.new(song)
  self.artist = song
end

def self.new_by_filename
  @@all << self
end

end
