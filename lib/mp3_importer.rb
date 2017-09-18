require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3")
    testing = @files.collect do |path|
       File.basename(path)
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end

  end


end
