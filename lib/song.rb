class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def self.new_by_filename(name)
    new_song = Song.new(name)
  end
end
