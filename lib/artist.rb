class Artist
  @@all = []

  attr_accessor :song, :import

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def add_song(songname)
    @songs << songname
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @new_artist = @@all.find(ifnone=nil) { |artist_object| artist_object.name == name }
    if @new_artist == nil
      return Artist.new(name)
    else
      @@all.each do |artist_object|
        if artist_object.name == name
          return artist_object
          break
        end
      end
    end

  end

  def print_songs
    @songs.each { |x| puts x.name}
  end

end
