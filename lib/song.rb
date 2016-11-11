class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end




  def self.new_by_filename(file_name)
    name = file_name.split(" - ")[1]
    artiste = file_name.split(" - ")[0]
    song_instance = self.new(name)
    song_instance.artist_name=(artiste)  #Artist.find_or_create_by_name(artiste) #not done yet!
    song_instance
  end


  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end






end
