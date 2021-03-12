class MP3Importer
  
  attr_reader :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir[path + "/*.mp3"].map do |filename|
        File.basename(filename)
    end
  end
  
  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
  
end