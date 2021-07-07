require 'pry'

class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @list_of_files = Dir.entries(@path)
    @list_of_files.delete(".")
    @list_of_files.delete("..")
    @list_of_files
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
