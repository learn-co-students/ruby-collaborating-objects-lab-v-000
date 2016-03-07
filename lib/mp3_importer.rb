require "pry"
class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path = file_path

  end

  def files
    Dir.entries(@path).reject{|f| File.directory? f || f[-3] != "mp3"}
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end

