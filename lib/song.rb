class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    # self.artist.add_song(self)
    self.artist.add_song(self)
  end

  # def artist_name=(name)
  #   if (self.artist.nil?)
  #     self.artist = Artist.new(name)
  #   else
  #     self.artist.name = name
  #   end
  # end

  def self.new_by_filename(file_name)
    filename_array = file_name.split(" - ")
    new_song = self.new(filename_array[1])
    new_song.artist_name = filename_array[0]
    new_song
  end

end
