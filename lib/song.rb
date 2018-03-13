require 'pry'
class Song
attr_accessor :name, :artist


def initialize (name)
@name =  name
@artist = nil
end


def self.new_by_filename(filename)
split_filename = filename.split(" - ")
        #uses the last half of filename split for title
        new_song = self.new(split_filename[1])
        #then uses the first half for artist
        new_song.artist = Artist.find_or_create_by_name(split_filename[0])
        new_song.artist.songs << new_song
        new_song
end



end
