class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    Dir["#{@path}/*.mp3"].map do |item|
      item.split("/").last
    end
  end

  def import
    self.files.each do |song|
      Song.new_by_filename(song)
    end
  end

end
