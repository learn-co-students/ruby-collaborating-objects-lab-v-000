require 'pry'

class Song
    attr_accessor :artist, :name, :genre

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(file_name)
        new_filename = []
        new_filename = file_name.split(" - ")
        song = self.new(new_filename[1])
        song.artist = Artist.find_or_create_by_name(new_filename[0])
        song.artist.add_song(song)
        song.genre = new_filename[2].sub(".mp3","")
        song
    end
end
