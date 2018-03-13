# class Song

#   attr_accessor :name, :artist, :song
#   def initialize(name)
#     @name = name
#   end

#   def self.new_by_filename(file_name)
#     song = self.new
#     song.name = file_name.split(" - ")[1]
#     song.artist = file_name.split(" - ")[0]  
#     song 
#   end


# end

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def self.new_by_filename(file_name)
 # binding.pry
    song=self.new(file_name)
    song.artist_name = file_name.split(" - ")[0]
    song.name = file_name.split(" - ")[1]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end


