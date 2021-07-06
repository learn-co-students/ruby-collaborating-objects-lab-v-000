class Song
    attr_accessor :name, :artist
   
    def initialize(name)
        @name = name
    end

    def self.new_by_filename(filename)
        song_name = filename.split(" - ")[1]
        artist_name = filename.split(" - ")[0]
        artist = Artist.find_or_create_by_name(artist_name)
        new_instance = self.new(song_name)
        artist.add_song(new_instance)
        new_instance.artist = artist
        new_instance 
    end

end