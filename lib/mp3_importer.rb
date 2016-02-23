
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files
    normalize(Dir["#{@path}/*.mp3"])
  end

  def normalize(array)
    array.map do |file|
      file.sub /\.\/\w+\/\w+\/\w+\//, ''
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
    
end



