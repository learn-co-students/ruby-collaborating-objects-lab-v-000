class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files_array = Dir.entries(@path)
    files_array.delete_if do |filename|
      !(filename.include?(".mp3"))
    end
    files_array.each do |filename|
      filename = filename[0...-5]
    end
  end

  def import
    files_array = self.files
    files_array.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end