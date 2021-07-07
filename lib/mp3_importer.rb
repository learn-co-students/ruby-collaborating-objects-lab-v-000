class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir.glob(@path + "/*.mp3") 
    @files.collect!{ |i| File.basename(i) }
  end

  def import
    files.each { |i| Song.new_by_filename(i) }
  end
  
end