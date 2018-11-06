class MP3Importer
  attr_accessor :path
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    Dir.entries(@path).select {|f| f.include?("mp3")}
  end
  
  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
  
end