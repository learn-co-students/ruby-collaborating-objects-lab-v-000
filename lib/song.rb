class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @artist = artist
    end

    def self.new_by_filename(name)
        song_name = name.split(" - ")[1]
        artist_name = name.split(" - ")[0]
        song = Song.new(song_name)
        artist = Artist.find_or_create_by_name(artist_name)

        song.artist = artist
        artist.add_song(song)

        song
    end
end