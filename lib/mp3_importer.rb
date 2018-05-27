require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    # gets an array of all the mp3 files at that path, then removing the path from each item
    @files = Dir["#{path}/*.mp3"].collect do |file|
      file.gsub("#{@path}/", "")
    end
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
