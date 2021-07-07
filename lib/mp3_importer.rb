class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").collect do |file|
      file.gsub("#{@path}/", "")
    end
  end

  def import
    files.each do |song|
      Song.new_by_filename(song)
    end
  end
end
