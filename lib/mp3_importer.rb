
class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    # @files ||= Dir.glob("#{path}/*.mp3").collect {|f| f.gsub("#{path}/", "")}
    Dir.entries(@path).reject {|file| !file.end_with?(".mp3")}
  end

  def import
    files.each {|f| Song.new_by_filename(f)}
  end
end
