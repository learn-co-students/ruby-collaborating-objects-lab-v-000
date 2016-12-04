require 'pry'

class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}db/*.mp3").collect {|f| f.gsub("#{path}/", "")}
  end

  def import(list_of_filenames)
     binding.pry
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end

end
