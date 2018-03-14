class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # def artist_name=(name)
  #   # self.artist.name = name if self.artist
  #   # this method needs to create an instance
  #   Artist.find_or_create_by_name(name)
  # end

  def artist_name=(name)
    # I think the problem with the import method is that this method doesn't save to @@all
    # if (self.artist.nil?)
    #   self.artist = Artist.new(name)
    # else
    #   self.artist.name = name
    # end
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    new_song = Song.new(file_name.split(" - ")[1])
    # p new_song.artist_name=(file_name.split(" - ")[0])
    # .artist_name  = file_name.split(" - ")[0]
    # new_song.artist = new_song.artist_name=(file_name.split(" - ")[0])
    new_song.artist_name = file_name.split(" - ")[0]
    new_song
end

end
