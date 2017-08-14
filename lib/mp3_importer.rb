require 'pry'

class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    Dir["#{@path}/*"].collect do |file|
      array = file.split("/")
      sorted_array = array[4]
    end
  end
  def import

    self.files.each do|file|
      Song.new_by_filename(file)
     end
  end
end
