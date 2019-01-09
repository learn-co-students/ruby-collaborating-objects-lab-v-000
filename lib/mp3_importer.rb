class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = Dir.foreach(@path).select { |x| File.file?("#{@path}/#{x}") }
    files
  end
  
  def import
    files = Dir.foreach(@path).select { |x| File.file?("#{@path}/#{x}") }
    files.each {|file_name| Song.new_by_filename(file_name) }
  end
  
end