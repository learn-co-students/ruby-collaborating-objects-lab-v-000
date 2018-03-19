require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.foreach(@path).select { |x| File.file?("#{@path}/#{x}") }
  end

  def import
    files = self.files
    files.each { |filename| Song.new_by_filename(filename) }
  end

end
