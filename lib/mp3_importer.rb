class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    @filenames = []
  end

  def files
    filenames = []
    files = Dir.glob("#{path}/*.mp3")
    files.each do |file|
      filename = file.split("/")
      filenames << filename[filename.size - 1]
    end
    filenames
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end


end
