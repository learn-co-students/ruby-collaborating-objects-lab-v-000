class MP3Importer
attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir["#{@path}/*.mp3"].collect {|filepath| filepath.split("mp3s/")[1]}
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end
