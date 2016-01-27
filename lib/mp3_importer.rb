class MP3Importer
  attr_accessor :path, :songs

  def initialize(path)
    @path = path
  end

  def import
    files = self.files
    files.collect do |file|
      song = Song.new_by_filename(file)
      song
    end
  end

  def files
    list_of_file_names = Dir.entries(@path).select do |file|
      !File.directory? file
    end
    list_of_file_names

  end
end
