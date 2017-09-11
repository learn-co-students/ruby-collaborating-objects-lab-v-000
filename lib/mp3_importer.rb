require "pry"
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @mp3_files = Dir.glob(File.join(@path, "*.mp3"))
    @mp3_files.map { |f| File.basename(f) }
  end

  def import
    files.each {|file_name| Song.new_by_filename(file_name)}
  end

end
