class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

    def self.new_by_filename(filename)
        data = filename.split(" - ")
        artist = data[0]
        song = data[1]
        #name = data[1].chomp(".mp3")  # takes the .mp3 from end of song title

        next_song = self.new(song)
        next_song.artist_name = artist
        next_song
    end
end
