require "pry"

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select{|f| f.include?(".mp3")}
  end

  def import
    # binding.pry
    files.each{ |filename| Song.new_by_filename(filename) }
  end
end
