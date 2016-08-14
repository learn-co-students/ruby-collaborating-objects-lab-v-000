class Song
    attr_accessor :title, :artist_name

    def initialize(title)
        @title = title
    end

    def artist=(artist_name)
        if (self.artist_name.nil?)
            self.artist_name = Artist.new(artist_name)
        else
            self.artist_name.name = name
        end
    end

    def self.new_by_filename(filename)
        data = filename.split(" - ")
        artist_name = data[0]
        song_name = data[1]
        name = data[1].chomp(".mp3")  # takes the .mp3 from end of song title

        song = self.new
        song.name = name
        song.artist_name = artist_name
        song
    end
end
