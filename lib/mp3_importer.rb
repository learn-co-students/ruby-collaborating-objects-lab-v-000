require 'pry'

class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    file_array = Dir["#{@path}/*.mp3"]
    file_array.map do |file|
      File.basename(file)
    end
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end 
  end
end
