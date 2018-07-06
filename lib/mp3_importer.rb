

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @library = []
  end

  def files
    @files = Dir.entries(@path).select do |file_name|
      file_name.include? "mp3"
    end
    @files
  end

  def import
    self.files.each do |file|
      song = Song.new_by_filename(file)
    end
  end

end
