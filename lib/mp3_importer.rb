class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_array = []
    Dir["#{@path}/**/*.mp3"].each do |song|
      file_array << song.sub(@path+"/", "")
    end
    file_array
  end

  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end
