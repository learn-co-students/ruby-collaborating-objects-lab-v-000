class MP3Importer
  attr_reader :path, :files

  def initialize(path)
    @path = path
  end

  def files
    self.files = Dir["#{path}/*.mp3"].collect {|file| file.gsub(/.*\//, "")}
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end

  private

  def path=(path)
    @path = path
  end

  def files=(files)
    @files = files
  end

end
