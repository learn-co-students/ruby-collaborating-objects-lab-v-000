class Song
  attr_accessor :name, :artist
    def initialize(name,artist = nil)
      @name = name
      @artist = artist
    end

    def self.new_by_filename(file_name)
        songname = file_name.split(" - ")[1]
        artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
        artist.add_song(songname)
        Song.new(songname,artist)

    end
end
