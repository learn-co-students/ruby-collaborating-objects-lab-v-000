class Song
    attr_accessor :artist, :name
    @@all = [ ]
    def initialize(name)
      @artist = artist
      @name = name

    end

    def save
      @@all << self  # refers to the class artist
    end


    def artist_name=(name)
       self.artist = Artist.find_or_create_by_name(name)
        self.artist.add_song(self)
        # ^ we telling it to go look for .add_song in the file artist.rb
    end

      def self.new_by_filename(file_name)
        #  look for what file_name gives use then split on that.
           x = file_name.split(" - ")[0]
           song_name = file_name.split(" - ")[1]
            new_song = self.new(song_name)
            new_song.artist_name = x
            new_song.save
            new_song
      end
  end
