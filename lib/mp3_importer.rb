class MP3Importer
  attr_accessor :path

  #@@files = []

  def initialize(path)
    @path = path
    #@@files << self
  end

  def files
    Dir.glob("#{path}/*.mp3").collect {|filename|filename.split(/3s./)[1]}

  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end



end
