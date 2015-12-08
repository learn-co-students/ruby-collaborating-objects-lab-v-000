class MP3Importer
  attr_accessor :files, :path

  def initialize(path)
    @path = path
    
  end


  def files
    Dir.chdir(@path){|path| Dir.glob("*.mp3")}
  end

  def import
    self.files.each {|file|
      Song.new_by_filename(file)

    }

  end

end