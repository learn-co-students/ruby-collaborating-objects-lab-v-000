class Song
  attr_accessor :name, :artist_name

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    self.new(filename)
  end

  def artist=(name)
    name = Artist.self
  end

end
