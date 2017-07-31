require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path) - %w[. ..]
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
