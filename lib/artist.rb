class Artist
attr_accessor :name, :songs, :artist
@@all=[]

def initialize(name)
  @name=name
  @songs=[]
  @artist=artist

end
   def self.all
    @@all 
  end
   def save
    @@all << self
  end


def add_song(song)
  @songs << song
end

 
def self.find_or_create_by_name(artists_name_here)

  artist=Artist.new(" ")
  
      end

  def print_songs

   songs.each do |songs|
    

    

   end

  

      

end























end
