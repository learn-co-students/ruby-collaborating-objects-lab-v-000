class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    parts = []
    parts = file_name.split(" - ")
    self.artist = parts[0]
    self.name = parts[1]
  end


end
