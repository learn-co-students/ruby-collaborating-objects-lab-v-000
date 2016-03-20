class Artist
attr_accessor :name
  @@songs = []
  @@all = []
  def initialize(name)
    @name = name
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def name=(name)
   @name = name
  end

  def self.find_or_create_by_name(artist)
   if @@all.any?{|artist_instance| artist_instance.name == artist}
     a = @@all.find{|artist_instance| artist_instance.name == artist}
   else new_artist = self.new
        new_artist.name = artist
         @@all << new_artist
        a = new_artist
  end
    a
end
end