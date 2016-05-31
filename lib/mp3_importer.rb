require 'pry'
class MP3Importer

  attr_reader :path, :file


  @files = []
  def initialize(path)
    @path = path
  end

  def files
    Dir.foreach(@path) do |item|
      next if item == '.' or item == '..'
        f = File.basename(item)
        @files << f 
    end
    @files
  end


  def import
    Song.new_by_filename(file_name)
  end
 
end
