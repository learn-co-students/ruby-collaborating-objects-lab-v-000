class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    #input = "Michael Jackson - Black or White - pop.mp3"
    #need to change bottom line to pass instance not string
    #have to build artist_name= first

    #!!!!!might not need to call song.new due to artist_name=
    #call atist.add_song
    array = name.split(" - ")
    new_song = self.new(array[1]) #see above
    new_song.artist_name = array[0]
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)

  end

end
