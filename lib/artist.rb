class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    # This method will:
    # 1. Store the Song object passed in to the method in @songs array
    @songs << song
  end

  def self.all
    # This method:
    # 1. Is a class method that exposes the value of @@all
    @@all
  end

  def save
    # This method will:
    # 1. Add artist instance to @@all
    @@all << self
  end

  #finds if artist exists
  def self.find(name)
    self.all.detect {|i| i.name == name}
  end

  #creates an instance of class
  def self.create(name)
    new = self.new(name)
    new.save
    new
  end

  def self.find_or_create_by_name(name)
    # This method will:
    # 1. Take the string passed in and:
    #   a. Find the artist instance that has that name OR
    #   b. Create an Artist instance with that name
    # 2. Return the instance
    self.find(name) || self.create(name)
  end

  def print_songs
    @songs.each {|i| puts "#{i.name}"}
  end

end
