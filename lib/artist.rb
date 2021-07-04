class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self  #This is a better way to save each new Artist as it's created
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(name)
    self.songs << name
  end

  def save
    # self.class.all << self #See initialize above
  end

  def self.find_or_create_by_name(the_artists_name)
      @@all.each do |artist_object|
        if artist_object.name == the_artists_name
          return artist_object
        end
      end
      self.new(the_artists_name)
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
