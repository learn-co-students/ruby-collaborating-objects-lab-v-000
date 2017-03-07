class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path).select {|file| !File.directory? file}
  end

  def import
    files.each { |f| Song.new_by_filename(f)}
  end

end
