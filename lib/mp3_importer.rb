class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    self.path = path
  end

  def files
    self.files = Dir[path + "/*"].collect {|file_name| file_name.split(/#{path + "/"}/)[1]}
  end

  def import
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end
end