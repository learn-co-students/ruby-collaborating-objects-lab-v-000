class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end


  def save
    @@all << self
  end

  def self.find_or_create_by_name
  end

  def print_songs
    songs
  end



end

