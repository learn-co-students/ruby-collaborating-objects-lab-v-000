class MP3Importer

  attr_accessor :songs, :path

  def initialize(path)
    @path = path
    @songs = []
  end

  def files
    files = Dir["#{path}/*.mp3"]
    files.collect {|path| path.split("/").last}
  end

  def import
    files.each{|file_name| @songs << Song.new_by_filename(file_name)}
  end

end