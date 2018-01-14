class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{path}/*.mp3"]
    @files.each do |file_name|
      file_name.slice!("#{self.path}/")
    end
    @files
  end

  def import
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end
