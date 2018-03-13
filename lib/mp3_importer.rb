class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    self.path = path
  end
  
  def files
    path = self.path + "/*.mp3"
    processed = Dir[path].collect do |path_and_name|
      path_and_name.split("/").last
    end
    processed
  end
  
  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
  
end