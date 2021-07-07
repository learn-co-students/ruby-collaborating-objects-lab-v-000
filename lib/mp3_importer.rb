class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect {|x| File.basename(x) }
  end

  def import
    files.each {|x| Song.new_by_filename(x)}
  end
end
