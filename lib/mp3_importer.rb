class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files(path)
    @files = Dir.glob("#{path}/*.mp3").map {|x| x.gsub("#{path}/", "")}
  end
end
