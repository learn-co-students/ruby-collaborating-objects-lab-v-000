class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    self.files.each{|filename|
    song = Song.new_by_filename(filename)}
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect do |file|
      file.gsub("#{path}/", "")
    end
  end


end
