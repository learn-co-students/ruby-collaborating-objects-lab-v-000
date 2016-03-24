class Artist

  attr_accessor :name

   def initialize(name)
      @name = name
    end

    def songs 
      @songs
    end 

    def save 
      @@all
    end 

    def self.find_or_create_by_name 
      end

    def print_songs 
    end 
end