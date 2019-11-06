class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/*.mp3"].collect {|file| file.split("mp3s/")[1]}
  end

  def import
    files.each {|file_name| Song.new_by_filename(file_name)}
  end

end
