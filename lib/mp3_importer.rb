class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    # collect all files within the given file_path
    file_names = Dir.entries(@path)
    
    # select only .mp3 files and return the array
    # this weeds out "." and ".." from previous call
    file_names.select do |file|
      file.end_with?('.mp3')
    end
  end
  
  def import
    # for each of the .mp3 files, create the song object
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end
end