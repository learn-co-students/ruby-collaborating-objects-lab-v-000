class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    @files = Dir.glob("#{path}/*.mp3").map {|x| x.gsub("#{path}/", "")}
  end
  def import
    self.files.each do |x|
      Song.new_by_filename(x)
    end
  end
end
