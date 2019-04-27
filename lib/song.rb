class Song
  attr_accessor :artist, :name, :file_name, :mp3mporter
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
    new_instance = Song.new(file_name)
    new_instance.split
    # new_instance.instance_variable_get("@#{file_name}")
    # String1.scan(/<([^>]*)>/).last.first
  end

end
