class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(/\s\-\s|\./)
    song = self.new(data[1])
    song.artist_name = data[0]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end


# Previous code

# class Song
#   attr_accessor :name, :artist

#   def initialize(name)
#     self.name = name
#   end

#   def self.new_by_filename(filename)
#     info = filename.split(" - ")
#     song = self.new(info[1].gsub('.mp3',''))
#     song.artist_name = info[0]
#     song
#   end

#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#   end

# end