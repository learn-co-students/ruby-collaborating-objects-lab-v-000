class Song
    attr_accessor :name, :artist
    
    def initialize(name)
        @name = name
    end
    
    def self.new_by_filename(file_name)
        artist_name = file_name.split(' - ')[0]
        song_name = file_name.split(' - ')[1]
        new_song = Song.new(song_name)
        new_song.artist_name = artist_name
        new_song
    end
    
    def artist_name=(artist_name)
        @artist = Artist.find_or_create_by_name(artist_name)
        @artist.add_song(self)
    end
end
