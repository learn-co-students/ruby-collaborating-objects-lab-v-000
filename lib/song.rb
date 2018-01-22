class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_filename(file)
    song = Song.new(file)
    self.name
  end
end
