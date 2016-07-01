class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    if @files
      @files
    else
      @files = Dir.glob("#{path}/*.mp3").collect{|file| file.gsub("#{path}/", "")}
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
