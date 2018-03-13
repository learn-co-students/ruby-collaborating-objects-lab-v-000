 require 'pry'

  class Song
    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end


    def self.new_by_filename(filename)
      song_name = filename.split(" - ")[1]
      song = self.new(song_name)

      artistname = filename.split(" - ")[0]
      song.artist = Artist.find_or_create_by_name(artistname)
      song.artist.add_song(song)
      song
      end


  end
