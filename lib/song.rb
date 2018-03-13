class Song

attr_accessor :name, :artist

def initialize (name)
 @name = name
 end

def name=(name)
  @name = name
end

def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
end

def self.new_by_filename(file_name)
  file_array = file_name.split(" - ")
  song = self.new(file_array[1])
  song.artist_name=(file_array[0])
  song
end

end
