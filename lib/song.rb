class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(file_name)

    song = self.new(file_name.split(" - ")[1])
    #binding.pry
    song.artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
    #binding.pry
    song
  end

end
