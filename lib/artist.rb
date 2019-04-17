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
end


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
