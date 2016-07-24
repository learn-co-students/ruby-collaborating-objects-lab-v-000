
class Artist
attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(artistname)
    Artist.all.detect {|i| i.name == artistname}
  end

  def self.create(artistname)
    newartist = Artist.new(artistname)
    newartist.save
    newartist
  end

    def self.find_or_create_by_name(artistname)
      self.find(artistname) || self.create(artistname)
    end


    def print_songs
      @songs.each do |x|
        puts x.name
      end
    end


end