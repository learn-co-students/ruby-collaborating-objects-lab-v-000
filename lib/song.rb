class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def artist_name=(name)
     self.artist = Artist.find_or_create_by_name(name)
     artist.add_song(self)
     artist.save
  end

  def self.new_by_filename(file)
    artist = file.split(" - ")[0]  
    song = file.split(" - ")[1]
    new_file = self.new(song)
    new_file.artist_name = artist
    new_file
  end
end