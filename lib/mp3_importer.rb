class MP3Importer
  require 'pry'
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    files.select do |file_name|
      file_name.include?("mp3")
    end
  end

  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end
