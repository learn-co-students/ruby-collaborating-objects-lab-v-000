class Song

  attr_accessor :name, :filename, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end


  def Song.new_by_filename(filename)

    file_array = []<< filename.split(" - ")
    file_array.flatten!
    song = Song.new(file_array[1])
    @name = file_array[1]
    @artist = file_array[0]
    song
  end
end

