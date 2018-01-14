    class Song
      attr_accessor :artist, :name, :genre
     
      def initialize(name)
        @name = name
        @genre = genre
      end
      
      def artist_name
        self.artist.name
      end
      
      def self.new_by_filename(filename)
        artist, song = filename.split(" - ")
        n_song = self.new(song)
        n_song.artist_name = artist
        n_song
      end
      
      def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
      end
    
    end