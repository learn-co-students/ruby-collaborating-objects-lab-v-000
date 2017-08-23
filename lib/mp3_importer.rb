require "pry"

class MP3Importer
  attr_accessor :path

  def initialize(path) #?
    @path = path
  end

  def files
    @files = Dir["#{path}/*"]
    @files.collect {|s| s.gsub("#{path}/", "")}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end
