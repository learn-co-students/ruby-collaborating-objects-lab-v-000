require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    file = Dir.entries(path).select do |file|
      file.include?('mp3')
    end
    
  end
#binding.pry
  def import
     files.each do |file|
      
      Song.new_by_filename(file)
    end
  end
end