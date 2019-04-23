class Song
  attr_accessor :artist, :name, :file_name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

end
