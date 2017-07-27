class Song
     attr_accessor :name, :artist
     
     def initialize(name)
          @name = name
     end
     
     # def artist=(artist)
     #      @name.artist = self
     # end
     
     def self.new_from_file(file)
       artist, song = file.split(' - ')
       new_song = new(song)

       new_song.artist = Artist.find_or_create_by_name(artist)
       new_song.artist.add_song(song)
     end
     
def self.new_by_filename(filename)
          filename = filename.split('-')
          new_song = Song.new(filename[1].strip)
          new_song.artist = Artist.find_or_create_by_name(filename[0].strip)
          new_song
end
     
end