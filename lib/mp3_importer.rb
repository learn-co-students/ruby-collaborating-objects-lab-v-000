class MP3Importer
  attr_accessor :path, :filepaths

  def initialize(path)
    self.path = path
  end

  def files
    self.filepaths = Dir.glob("#{self.path}/*.mp3")
    self.filepaths.each do |filepath|
      filepath.slice! "#{self.path}/"
    end
  end

  def import
    self.files
    if self.filepaths
      self.filepaths.each do |string|
        Song.new_by_filename(string)
      end
    end
  end

end
