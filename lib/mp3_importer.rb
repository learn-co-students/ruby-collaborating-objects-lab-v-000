class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    file_names = Dir["#{self.path}/*.mp3"]
    file_names.map! { |file_name| file_name =  file_name.split("/").last }
    file_names
  end

  def import
    self.files.each { |file_name| Song.new_by_filename(file_name) }

  end

end
