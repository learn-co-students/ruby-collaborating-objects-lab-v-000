class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    raw_files = Dir[@path + "/*"]
    cleaned_files = []
    raw_files.each {|file| cleaned_files << File.basename(file)}
    cleaned_files
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
