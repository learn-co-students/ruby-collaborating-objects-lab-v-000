class Artist
 
  
  attr_accessor :name , :songs
  @@all =[]
    def initialize(name)
      @name = name
      @songs = []
    end

    def name=(name)
      @name=name
      
    end

    def add_song(song)
      @songs  << song
      
    end

    def songs
      @songs 
    end

    def save
      @@all << self
    end

    def self.all
      @@all
    end



  def self.find_or_create_by_name(name)
    find = self.all.detect {|person| person.name == name}
    if find == nil
      person = self.new(name)
      person.save
      person
    end
  end

    def print_songs
      @songs.each {|song|puts song.name}
    end

end