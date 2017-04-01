class MP3Importer 
  attr_accessor :path 

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.foreach(@path) do |filename|
      files << filename if filename.include?".mp3"
    end
    files 
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
  
end