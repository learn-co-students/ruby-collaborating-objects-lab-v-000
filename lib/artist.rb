require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_name)
    song = Song.new(song_name)
    @songs << song.name
  end

  def self.all
    @@all
  end

  def save
     @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|x| x.name == name}
      name
     else
      @@all << Artist.new(name)
      self.all.first.songs << name
      @@all.last
# binding.pry
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end


    #  Failure/Error: expect(Artist.all.first.songs.empty? && Artist.all.last.songs.empty?).to eq(false)

#     [1] pry(Artist)> Artist.all
# => [#<Artist:0x0000000255dd20 @name="Action Bronson", @songs=[]>,
#  #<Artist:0x000000017804a0 @name="Real Estate", @songs=[]>,
#  #<Artist:0x000000018efb38 @name="Thundercat", @songs=[]>]
# [2] pry(Artist)> Artist.all.first
# => #<Artist:0x0000000255dd20 @name="Action Bronson", @songs=[]>
# [3] pry(Artist)> Artist.all.first.songs
# => []
