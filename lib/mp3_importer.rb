class MP3Importer
  attr_reader :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    files_array = Dir.entries(path)
    files_array.delete_if {|file| !file.end_with? ".mp3"}
    files_array
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end

end
