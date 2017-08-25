class Artist
    attr_accessor :name, :songs

    @@all = []
    @@all_hash = {}
    def initialize(name)
      @name = name
      @songs = []

      # binding.pry
    end

    def add_song(song)
      @songs << song
    end

    def songs
      @songs
    end

    def self.all

      @@all
# binding.pry
    end

    def save
      @@all << self
      @@all_hash[self.name] = self
    end


    def self.find_or_create_by_name(name)

        if !@@all_hash.include?(name)
          artist = Artist.new(name)
        else
          @@all_hash[name]
        end
    end

    def print_songs
      @songs.each do |i|
        puts "#{i.name}"
      end
    end

end
