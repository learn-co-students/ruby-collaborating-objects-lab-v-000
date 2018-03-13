class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    new_instance = self.new(file_name.chomp(".mp3").split(" - ")[1])
    new_instance.artist = Artist.new(file_name.chomp(".mp3").split(" - ")[0])
    new_instance
    # new_instance.name
  end

end