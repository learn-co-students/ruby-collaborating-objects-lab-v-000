class Song

  attr_accessor :title, :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name)
    song.title = file_name.split(" - ")[1]
    song.artist.name = self
  end



end
