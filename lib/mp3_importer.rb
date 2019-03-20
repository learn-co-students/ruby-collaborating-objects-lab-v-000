class MP3Importer
  attr_accessor :path 
  def initialize(filepath)
    @path = filepath
  end 
  
  def files
  
  end 
  
  def import
    @path.each{ |filename| Song.new_by_filename(filename) }
  end
end