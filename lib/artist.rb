class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def songs

  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name

  end

  def print_songs
    @@all
  end
end
