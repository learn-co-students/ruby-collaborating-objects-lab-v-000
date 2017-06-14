require "pry"
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{path}/*.mp3"]
    @files.collect do |file|
      file.slice!("#{path}/")
      file
    end
  end

  def import
    files.each do |i|
      Song.new_by_filename(i)
    end
  end
end
