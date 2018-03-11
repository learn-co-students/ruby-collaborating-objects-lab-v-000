class Song
require 'pry'
  attr_accessor :artist, :name, :file_name, :artist_name

  def initialize(name)
    @name = name
    @artist = artist
    @file_name = file_name
  end

  def artist_name=(artist_name)
    artist_name.find_or_create_by_name(artist_name)
    artist_name.add_song(self)


  end




  # def new_by_filename(filename)
  # arr = []
  # arr = filename.split(' - ')
  # song= arr[1]
  # artist_name = arr[0]
  # self.artist_name=(artist_name)
  # end

  # def self.new_by_filename(filename)
  #
  #
  #   name = filename.split(' - ')[1]
  #   @artist = filename.split(' - ')[0]
  #   song = Song.new(name)
  #   test = song.name
  #
  #
  #   song.artist_name = @artist
  #   binding.pry
  #   # @songs << song
  #   # song.artist = self
  #   # @@song_count += 1
  # end



  # def artist_name=(artist_name)
  #   artist = Artist.find_or_create_by_name(artist_name)
  #   artist.add_song(self)
  #
  # end
  #

  def self.new_by_filename(name)
  song = Song.new(name.split(' - ')[1])


  song.artist = Artist.find_or_create_by_name(name.split(' - ')[0])

  song.artist.add_song(song)

  song

end




end
