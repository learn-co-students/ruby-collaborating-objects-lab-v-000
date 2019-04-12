class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |s| s.gsub("#{path}/","")}
  end

  def import
    files.each{|s| Song.new_by_filename(s)}
  end
end
