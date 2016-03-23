class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end


  def files
    Dir.entries(self.path).select { |f| f[-4..-1] == ".mp3"}
  end

  def import
    mp3files = self.files
    mp3files.each do |f|
      Song.new_by_filename(f)
    end
  end

end
