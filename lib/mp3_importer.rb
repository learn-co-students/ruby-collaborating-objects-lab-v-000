require 'pry'

class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path = file_path
    @files = []
  end

  def files
    files = Dir.glob("#{@path}/*.mp3")
    files.each do |file|
      file = File.basename(file)
      @files << file
    end
    @files
  end

  def import
    files.each do |file_name|
      binding.pry
      Song.new_by_filename(file_name)
    end
  end
end
