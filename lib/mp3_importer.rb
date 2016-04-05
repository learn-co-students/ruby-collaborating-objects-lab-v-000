class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

# Dir[] returns full path of mp3 files into array 
# .map makes new array with only file name by...
# uses .split delimiter "/" with .last to return last element of each array
  def files
    list = Dir[path + "/*.mp3"].map {|full_path| full_path.split("/").last}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end
