class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    divided = file.split(" - ")
    artist = Song.new(divided[0])
  end
end
