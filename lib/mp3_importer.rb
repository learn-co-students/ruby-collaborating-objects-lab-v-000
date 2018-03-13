require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.glob("#{path}/*.mp3")
    files.map {|mp3_filename| mp3_filename.gsub("#{path}/", '')} #'hello world'.gsub('hello ', '') << 'world'
    #files
  end

  def import#(files)
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
