require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).delete_if do |filename|
      filename.start_with? "."
    end
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
