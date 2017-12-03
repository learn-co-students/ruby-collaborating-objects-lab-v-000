require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir["#{@path}/*.mp3"].each { | file | @files << file.sub("#{@path}/","")}
    @files
  end

  def import
    files.each { |filename| Song.new_by_filename(filename) }
  end

end
