class MP3Importer

  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect {|file_name| file_name.split("/").last}
  end

  def import
    self.files.each {|s| Song.new_by_filename(s)}
  end

end