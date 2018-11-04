class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files 
    Dir.entries(@path).select{|file| file[-4] == '.'}
  end
  
  def import
    files.select{|file| file[-4] == '.'}.each{|file| Song.new_by_filename(file)}
  end
end