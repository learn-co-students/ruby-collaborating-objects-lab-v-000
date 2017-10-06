class Artist
attr_accessor :name
  @@all =[]
    def initialize(name)
      @name=name
      @songs =[]

    end

    def add_song(song)
      @songs << song
      song.artist=self

    end

    def songs
      @songs
    end

    def save
      @@all << self
    end

    def print_songs
      @songs.each do |song|
        puts song.name
      end
    end

    def self.all
      @@all
    end


    def self.find_or_create_by_name(string)
        artist_by_name = @@all.collect {|artist| artist.name}
        if artist_by_name.include?(string)
          new_array = @@all.select {|artist| artist.name == string}
          new_array[0]
        else
          new_artist=Artist.new(string)
          @@all << new_artist
          new_artist
        end
    end
end
