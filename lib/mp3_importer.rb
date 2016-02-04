require 'pry'
class MP3Importer
  attr_accessor :path, :songs
  
  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.foreach(path) do |file|
      next if file == '.' or file == '..'
      files << file
    end
    files
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end
end