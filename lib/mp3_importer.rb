require "pry"
class MP3Importer
  attr_accessor :path, :song, :artist

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/*"].collect do |p|
       p.split("/").last
    end
  end

  def import
    files.each do |f|
      #binding.pry
      Song.new_by_filename(f)
    end
  end
end
