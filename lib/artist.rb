class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    if !@@all.include?(self)
      @@all << self
    end
  end

  def self.find_or_create_by_name(name)
    found = false
    @@all.each do |artist|
      if artist.name == name
        found = true
        self
      end
    end
    if found == false
      self.new(name)
    end
  end

  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end

end
