class MP3Importer
  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    Dir.entries(self.path).select {|f| !File.directory? f}
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end


end
