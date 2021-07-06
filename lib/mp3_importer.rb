require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    files_array = Dir.glob("#{@path}/*.mp3")
    files_array.collect do |file|
      file.gsub(/\.\/spec\/fixtures\/mp3s\//, "")
    end
  end

  def import
    files.collect do |file|
      Song.new_by_filename(file)
    end
  end

end