require "pry"
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    self.files.each do |f|
      Song.new_by_filename(f)
    end
  end

  def files
    @files = Dir["#{@path}/*.mp3"]
    @files.each do |f|
      f.slice! "#{@path}/"
    end
  end


end
