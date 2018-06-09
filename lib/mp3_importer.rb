class MP3Importer
  
  @@all = []
  def initialize(file_path)
    @path = file_path
    @files = []
  end
  
  def path
    @path
  end
  
  def files
    @files = Dir.glob("#{@path}/*.mp3").map do |file|
      File.basename(file) #strips the pathname
    end
    @files
  end
  
  def import
    self.files.each do |file|
      new_song = Song.new_by_filename(file)
    end
  end

end