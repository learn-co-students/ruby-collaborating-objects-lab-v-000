class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
      artistName = file_name.split(" - ")[0]
      songName = file_name.split(" - ")[1]
      song = self.new(songName)
      song.artist_name=(artistName)
      song.artist=(Artist.find(artistName))
      song.artist.add_song(songName)
      song
    end


    def artist_name=(artist)
      Artist.find_or_create_by_name(artist)
      Artist.find(artist)
    end

    def self.all
      @@all
    end

    def save
      @@all << self
      self
    end
end
