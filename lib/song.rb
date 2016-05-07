class Song

  attr_accessor :name, :title, :artist

  def initialize(name)
    @name = name
  end

  def self.artist=(artist)
    Artist.find_or_create_by_name(artist)

  end

  def self.new_by_filename(file_name)
    title = file_name.split(" - ")[1]
    self.new.artist.name = title
  end


end