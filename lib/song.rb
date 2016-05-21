class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end

end