class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    if !@files
      @files = Dir.glob("#{path}/*.mp3").map{|x| x.gsub!("#{path}/", "")}
    end
    @files
  end
  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end
