class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path

  end

  def files
    @files ||= Dir.glob("#{@path}/*.mp3").map{ |file| file.gsub("#{@path}/", "") }
  end

  def import
    self.files.each{|f| Song.new_by_filename(f)}
  end

end
