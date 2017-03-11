class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    @filenames = Dir[path]
  end

  def import
    @filenames.each {|filename| Song.new_by_filename(filename)}
  end
end
