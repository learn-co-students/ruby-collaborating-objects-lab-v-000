class Artist

    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
      @name = name
      @songs = []
    end

    def self.all
      @@all
    end

    def add_song(song)
      @songs << song
    end

    def songs
      @songs
    end

    def save
      @@all << self
    end

    def self.find_or_create_by_name(name)
      art = self.all.find {|artist| artist.name == name}
        if art != nil
           art
         else
           now = self.new(name)
           now.save
           now
         end

    end

    def print_songs
        @songs.each do |song|
          puts "#{song.name}\n"
        end
      end

end
