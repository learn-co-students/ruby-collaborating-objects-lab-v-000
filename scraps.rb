class Artist

  @@all = [ ]

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = [ ]
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.none?{ |x| x.name == name}
      name = self.new(name)
    end
  end

  def print_songs
    @songs.each { |x| puts "#{x.name}"}
  end
end
