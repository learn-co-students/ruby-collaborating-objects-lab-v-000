class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    # song.artist = self
  end

  def self.all
    @@all
  end

  def save
  @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.name.nil?
      # self.new(name)
    else self.new
    end
  end

  # def self.find_or_create_by_name(name)
  #   # if name == self.new(name)
  #     # self.new(name)
  #   if self.new(name)
  #   else self
  #   end
  # end
end

# @songs.detect {|a| a == name}

# (1..10).detect  {|i| i % 5 == 0 and i % 7 == 0 }

# > arr.find {|a| a > 5}

# Artist.find_or_create_by_name(name)
# This class method should take the name that is passed in (remember, it will be a string), and do one of two things.
#   1. Find the artist instance that has that name
# or
# 2. create one if it doesn't exist.
#   Either way, the return value of the method will be an instance of an artist with the name attribute filled out.

# def self.find_or_create_by_name(name)
#   if self.nil?
#     self.new(name)
#   # else self
#   end
# end

# if (self.artist.nil?)
#       self.artist = Artist.new(name)
#     else
#       self.artist.name = name
#     end

# describe "#add_song" do
#       it "takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist" do
#         hello = Song.new("Hello")
#         adele.add_song(hello)
#         expect(adele.songs).to include(hello)
#         expect(hello.artist).to eq(adele)
#       end
#     end
#
#     describe '#add_song' do
#       it 'keeps track of an artist\'s songs' do
#         song_one = Song.new("Rock With You")
#         song_two = Song.new("Smooth Criminal")
#         artist.add_song(song_one)
#         artist.add_song(song_two)
#         expect(artist.songs).to eq([song_one, song_two])
#       end
#     end
