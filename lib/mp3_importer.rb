class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    files
  end
  
  def files
    @files = Dir[path + "/*"]
    @files.each_with_index do |file, index|
      @files[index] = file.split("/")[-1]
    end
    @files
  end
  
  def import
    @files.each do |file|
      song = Song.new_by_filename(file)
    end
  end
  
end