class Song
    # Class Stuff
    def self.new_by_filename(filename)
        artist_name = filename.split(/\s-\s|.mp3/)[0]
        name = filename.split(/\s-\s|.mp3/)[1]
        genre = filename.split(/\s-\s|.mp3/)[2]
        
        artist = Artist.find_or_create_by_name(artist_name)

        song = self.new(name)
        song.artist = artist
        song.genre = genre

        artist.add_song(song)
        song
    end

    # Instance Stuff
    attr_accessor :name, :artist, :genre

    def initialize(name)
        @name = name
    end

end