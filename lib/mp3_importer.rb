class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/*.mp3"].collect do |x|
      x.split("/").last
    end
  end

  def import
    self.files.each do
      |x| Song.new_by_filename(x)
    end
  end

end
