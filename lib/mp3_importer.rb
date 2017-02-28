require "pry"
class MP3Importer

  attr_accessor :path

  @array = []

  def initialize(path)
    @path = path
  end

  def files
    @array = Dir.entries(@path)
    @array.delete(".")
    @array.delete("..")
    @array
  end

  def import
    self.files.each do |something|
      Song.new_by_filename(something)
    end
  end

end
