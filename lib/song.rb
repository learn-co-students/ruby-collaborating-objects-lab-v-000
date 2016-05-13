class Song

@@all = []

  attr_accessor :name, :filename, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end

  def Song.new_by_filename(filename)
    file_array = []<< filename.split(" - ")
    song = Song.new(file_array[0][1])
    @artist = file_array[0][0]
    @name = file_array[0][1]
  end
end

