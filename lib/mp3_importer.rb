class MP3Importer

  attr_accessor :path

  def initialize(filename)
    @path = filename
  end

  def files
    Dir.entries(@path).select { |file| file.end_with?(".mp3")}
  end

  def import
   self.files.each { |file_name| song = Song.new_by_filename(file_name)}
  end
end