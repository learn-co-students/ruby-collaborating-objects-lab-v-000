require 'pry'
class MP3Importer
  attr_accessor :path, :file_array

  def initialize(path)
    @path = path
  end

  def files
    @file_array = Dir.entries(@path)
    @file_array = @file_array.select do |file|
      file.include?(".mp3")
    end
  end
  binding.pry

  def import
    @file_array.each do |file_name|
      song = Song.new_by_filename(file_name)
    end
  end

end






#  def files
#    Dir.chdir(path)
#    file_array = Dir['*.mp3']
#    file_array
#  end
#end
