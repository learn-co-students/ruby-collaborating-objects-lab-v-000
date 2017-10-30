class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.hi
    puts "hi"
  end

  def self.new_by_filename(filename)
    info = filename.split(" - ")
    song = Song.new(info[1])
    song.artist_name = info.first
    song
    #binding.pry
    #song.artist.add_song(song)
  end



  def artist_name=(name)
    #binding.pry
    #Artist.new("Abba")

    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)




  end



end
