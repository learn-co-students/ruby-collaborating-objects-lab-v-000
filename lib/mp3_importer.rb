class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").map do |file_name|
      file_name.split("/").last
    end
  end

  def import
    files.each do |file_name|
      file_name = Song.new_by_filename(file_name)
    end
  end
end
