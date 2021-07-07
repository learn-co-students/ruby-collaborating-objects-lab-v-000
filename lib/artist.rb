class Artist 

attr_accessor :name, :title, :songs, :artist, :artist_to_return

@@all = []

def initialize(name, artist=nil)
  @name = name
  @songs = []
  @artist=artist
  @@all << self
end

def new(name, title=nil)
  @name = name
  @title = title
  # @@all << self
end
  
def add_song(song)
 @songs << song
end

def save 
  @@all << self
end

def self.all 
  @@all
end
  
def self.find_or_create_by_name(name) 
  @@all.each do |item|
    if @@all.include? name == false
      @artist_to_return = Artist.new(name)
    else 
      @artist_to_return = item
    end 
  end
  @artist_to_return
end
  
def print_songs  
  @songs.each do |item|
    puts item.name
  end
end 


end





