class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir[@path + "/*.mp3"]
    @files.map{|file| file.split("/")[-1]}
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
