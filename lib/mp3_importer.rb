class MP3Importer
  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    Dir["#{self.path}/*"].map { |file_name| file_name.split('/')[-1] }
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
