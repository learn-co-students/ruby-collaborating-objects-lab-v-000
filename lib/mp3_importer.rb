class MP3Importer
  attr_accessor :path, :files, :song

  def initialize (path)
    @path = path
    @files = files
    @files = []
  end

  def files
    @files = Dir.entries(path).keep_if {|x| x.include? ".mp3"}
  end

  def import
      self.files.each {|filename| Song.new_by_filename(filename)}
  end

end
