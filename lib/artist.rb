class Artist
  attr_accessor :name, :song
  attr_reader :songs

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    index_of_name = @@all.each {|x| x.name = name}
    index_of_name == nil ?
    artist = Artist.new(name) : @@all[index_of_name]
  end

end

# attr_accessor :name
#   @@song_count = 0
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#

#
#   def add_song_by_name(name)
#      new_song = Song.new(name)
#      @songs << new_song
#      new_song.artist = self
#      @@song_count += 1
#    end
#
#    def self.song_count
#      @@song_count
#    end
#
# end
#
