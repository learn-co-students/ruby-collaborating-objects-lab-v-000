class Artist
    attr_accessor :name, :songs
    
   @@all=[]
   
   
   
    def initialize (name)
        @name=name
        @songs=[]

        save
    end
    
    def add_song (song)
       @songs << song 
    end
    
    def self.all
       @@all
    end
   
    def save
        self.class.all << self
    end
    
    def self.find_or_create_by_name(namer)
        self.all.detect {|i| i.name==namer} || self.new(namer)
    end
    
    def print_songs 
       @songs.each do |song|
           puts song.name
                   end
    end
    
end