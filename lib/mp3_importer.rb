class MP3Importer
  require 'pry'
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    file_list = Dir.glob("#{@path}/*.mp3")
    file_list
    file_list.map do |file|
      parsed_files = file.split( '/' )[4]
    end
  end
  
  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
  
end
