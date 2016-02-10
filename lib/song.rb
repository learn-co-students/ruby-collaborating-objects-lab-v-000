require 'pry'

class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(file_name)
        song = self.new(file_name)
        name_array = file_name.split(" - ")
        song.artist_name = name_array[0]
        song.name = name_array[1].gsub(".mp3", "")
        song
    end

    def artist_name=(name)
        artists = Artist.find_or_create_by_name(name)
        @artist = artists
    end
end
