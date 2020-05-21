class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    files =[]
     array = Dir.entries(@path)
     array.each do |fname|
       if fname.match(/mp3\z/)
          files << fname
       end
    end
    files
  end


  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
