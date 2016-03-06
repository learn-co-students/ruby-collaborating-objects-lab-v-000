class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
        @songs << song
        song.artist = self   
    end

  def add_song_by_name(name)
  song = Song.new(name)
   self.add_song(song)
   end

   def self.all
    @@all
  end
 def save
    @@all << self
  end
    def self.create_by_name(title) 
    song = self.new(name)
    song.name = title
    song.save
    song  
  end

  def self.find_by_name(title)
    @@all.find{|song| song.name == title}
  end

  def self.find_or_create_by_name(title)
   self.find_by_name(title) ? self.find_by_name(title) : self.create_by_name(title)
  end
  def print_songs
    @songs.each{|x| puts x.name}    
  end
   
end