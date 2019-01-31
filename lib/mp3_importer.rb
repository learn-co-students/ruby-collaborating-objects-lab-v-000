class MP3Importer
  attr_accessor :path, :song

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").map do |file_name|
      file_name.split("/").last
    end
  end

  def import(filename)

  end
end
