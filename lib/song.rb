class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(file)
        split_name = file.split(" - ")
        song = Song.new(split_name[1])
        artist = Artist.find_or_create_by_name(split_name[0])
        song.artist = artist
        artist.add_song(song)
        song
    end

end
