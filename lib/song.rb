class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(file_name)
        artist_song = file_name.split("-").map{|item| item.strip}
        song = self.new(artist_song[1])
        song.artist = Artist.new(artist_song[0])
        song
    end

end
