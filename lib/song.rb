class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  # def artist_name=(name)
  #   if (self.artist.nil?)
  #     self.artist = Artist.new(name)
  #   else
  #     self.artist.name = name
  #   end
  # end



  def self.new_by_filename(filename)
    #This will return "Black or White"
    name = filename.split(" - ")[1]
    song = self.new(name)
    artist = song.artist
  end


end
