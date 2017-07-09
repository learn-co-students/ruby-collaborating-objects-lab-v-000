class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    filepaths = Dir.glob(File.join(@path, "*"))
    filenames = []
    filepaths.each do |filepath|
      file_data = filepath.split("/")
      filename = file_data[-1]
      filenames << filename
    end
    filenames
  end

  def import
    self.files.each do |file_name|
      puts file_name
      Song.new_by_filename(file_name)
    end
  end
end
