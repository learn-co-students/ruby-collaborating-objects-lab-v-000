class Song
  attr_accessor :artist, :name, :file_name, :MP3Importer, :some_filename
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(some_filename)
    new_instance = Song.new(some_filename)
  end

end
