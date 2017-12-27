class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
    @files = self.files
  end
  
  def files
    files = Dir["#{@path}/*.mp3"]
    files.each {|file| file.slice!("#{@path}/")}
  end
  
  def import
    @files.each {|file| Song.new_by_filename(file)}
  end
end

