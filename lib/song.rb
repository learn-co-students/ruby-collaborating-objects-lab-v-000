class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end
#Michael Jackson - Black or White - pop.mp3
    def self.new_by_filename(filename)
        name_components = filename.split(" - ")
        song = Song.new(name_components[1])
        song.artist = Artist.find_or_create_by_name(name_components[0])
        song.artist.add_song(song)
        song
    end
end