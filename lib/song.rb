class Song
  attr_accessor :name, :artist_name, :artist
  @@all = []

   def initialize(name)
     @name = name
   end

   def save
     @@all << self
     self
   end
   def self.new_by_filename(name)
      file_name_array = name.split("-")
      song = Song.new(file_name_array[1].strip)
      artist  = Artist.find_or_create_by_name(file_name_array[0].strip)
      artist.add_song(song)
    #  binding.pry
      song.save
      song
    #  binding.pry
     end
end
