class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
      @name = name
      @songs = []
      #self.save
    end

    def add_song(song)
      @songs << song
    end

    # def songs
    #   @songs
    # end

    def save
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find_or_create_by_name(name)
      # allnames = []
      # @@all.each { |n| allnames << n.name}
      #   if !allnames.include?(name)
      #     self.new(name)
      #   else self
      #   end


      self.find(name) ? self.find(name) : self.create(name)
    end

    def print_songs
      self.songs.each { |n|
         puts n.name
       }
    end

    def self.find(name)
      self.all.find {|artist| artist.name == name}
    end

    def self.create(name)
      self.new(name).tap {|artist| artist.save}
    end

end
