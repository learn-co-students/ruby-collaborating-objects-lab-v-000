class Song

  attr_accessor :name, :artist


  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file_array = filename.split(/ - /)
    song = Song.new(file_array[1])
    song.artist_name = file_array[0]
    song
    #binding.pry
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end


end