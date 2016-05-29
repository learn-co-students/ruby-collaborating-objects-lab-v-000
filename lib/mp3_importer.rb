class MP3Importer
  attr_accessor :path
  def initialize(filename)
    self.path = filename << "/*"
  end
  def files
    filenames = Dir[self.path]
    filenames.collect {|file| file.split("/").pop if file.end_with?(".mp3")}
  end
  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
