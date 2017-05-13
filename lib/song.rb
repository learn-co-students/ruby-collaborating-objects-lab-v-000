
class Song

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def artist= (artist)
        @artist = (artist)
    end

    def artist
        @artist
    end

    def self.new_by_filename(some_filename)
        song_file = some_filename.split(" - ")
        some_song = Song.new(song_file[1])
        some_artist = Artist.find_or_create_by_name(song_file[0])
        some_song.artist = some_artist
        some_song.artist.songs << some_song
        some_song
    end

end