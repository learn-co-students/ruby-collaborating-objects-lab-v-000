require "pry"

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    arr = nil
    Dir.chdir(@path) do |x|
      arr = Dir.glob "*.mp3"
    end
    arr
  end
  #
  # Dir.glob("#{path}/*.mp3").collect{ |f f.gsub("#{path}/", "") }

  def import
    files.each { |filename| Song.new_by_filename(filename) }
  end


end
