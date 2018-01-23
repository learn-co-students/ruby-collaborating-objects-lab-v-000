class Artist

attr_accessor :name, :song
   @@all = []

   #peter = Artist.new("peter")  How we create a new artist.
    #<Artist:0x00000000ce4cd0 @name="peter", @songs=[]>
    def initialize(name)
      @name = name
      @songs = [ ]
       #peter.song = ("pit")  How to attribute song to the artist after the artist is create.
    end

    def songs
      @songs
    end

    def save
      @@all << self  # refers to the class artist to save the songs when created
    end

    def self.all # show all song artist ever created.
      @@all
    end

    def add_song(song)
      @songs << song
    #   song.artist = self
    #   @@song_count = @@song_count + 1
    #  #  or # @@song_count +1

    end

 #### this is for the self.find_or_create_by_name method
        def self.find_by_name(name)
          self.all.find { |x| x.name == name}
        end

         def self.create_by_name(name)
               artist = Artist.new(name) #initiate new artist.
               artist.save  #reason for the save method
               artist
         end
  #### this is for the self.find_or_create_by_name method


    def self.find_or_create_by_name(name)
      #turn class string into an objects
      # THis is where we chain things togther
       if self.find_by_name(name)  #run code line 35
          self.find_by_name(name)
       else
         self.create_by_name(name)  #run code line 39
       end

    end

    def print_songs
      #go throught each song.separately
      self.songs.each do |name|
       puts name.name

     end
    end

end
