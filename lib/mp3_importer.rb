require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.{mp3}").map{ |x| x.gsub("#{path}/", "")}
  end

  def import
    files.each{ |x|
      Song.new_by_filename(x) }
  end

end
