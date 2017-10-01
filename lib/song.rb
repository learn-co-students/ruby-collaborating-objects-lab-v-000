class Song
#creates a song from a filename and sends the song to the Artist class
attr_accessor :title, :artist

    def initialize(title)
      @title = title
    end

    def new_by_filename
      parse filename -- split(" - ")
      create new song with this string for the filename
      associate this new song with an artist -- second part of the name
      return the song instance
    end

    (song.artist = self)

    def artist_name=(artist_name)
      if self.artist
        self.artist.name
      else
        nil
      end
    end
end
(turns artist name string into an artist object )
either create it, or find it. Call on artist class --

def Artist.find_or_create_by_name(artist's name)
assign song to the artist
song.artist = self

end

end
