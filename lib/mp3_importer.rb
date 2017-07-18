require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    files
  end

  def files
    @files = Dir["#{@path}/*"]
    @files.collect do |file|
      file.split("#{@path}/")[1]
    end
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
