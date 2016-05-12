class MP3Importer

  attr_accessor :path
  @files = []


  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.mp3")
    @files.map do |file| file.gsub("#{path}/", "")
    end
  end

  def import
    self.files.each do |file|
       Song.new_by_filename(file)
    end
  end

end