class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def artist=(name)
   @artist = name
  end

  def self.new_by_filename(file_name)
    x = file_name.split(" - ")
    y = x[0]
    u = x[1]
    t = Artist.new(y)
    z = Song.new(u)


  end

  def artist_name=(name)
    x = Artist.find_or_create_by_name(name)
    @artist = x
    @artist
  end



end
