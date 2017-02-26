class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{self.path}/*.mp3")
    @files = @files.collect{|x| x.gsub("#{path}/", "")}
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
