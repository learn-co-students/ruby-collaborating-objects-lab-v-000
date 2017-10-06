class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path=file_path

  end

  def files
    array_of_files = Dir.entries(@path)
    array_of_files.select {|f| !File.directory? f}
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
    
  end


end
