
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
      @all=[]
  end
  
  
  def save
        self.class.all << self
      end
      
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

 def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save
  end
end