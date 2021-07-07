require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    dir = Dir.glob("#{path}/*.mp3")
    ready_files = []
    dir.each do|x|
      ready_files << x.gsub(path+"/", "")
    end
      ready_files
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
  end
  end
end
