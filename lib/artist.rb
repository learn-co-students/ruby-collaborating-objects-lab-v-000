class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  # cleaner to break #find_or_create_by_name into 2 helper methods, then combining the two
  # def self.find_or_create_by_name(name)
  #   search = self.all.find {|artist| artist.name == name}
  #     if search != nil
  #       search
  #     else
  #       new_artist = self.new(name)
  #       new_artist.save
  #       new_artist
  #     end
  # end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
