class Song
    attr_accessor:name, :artist
    
    def initialize(name)
        @name = name
    end
    
    def self.new_by_filename(filename)
        data = filename.split(" - ")
        new_song = self.new(data[1])
        new_song.artist = Artist.find_or_create_by_name(data[0])
        new_song.artist.add_song(new_song)
        new_song
    end
end