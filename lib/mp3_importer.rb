class MP3Importer

  attr_accessor :path

  def initialize
    @path = path
  end

  def self.files

  end

  def self.import(filename)
    Song.new_by_filename(filename)
  end

end
