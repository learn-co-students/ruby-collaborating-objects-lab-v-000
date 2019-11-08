class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.glob(File.join(@path, "*"))
    file_str = files.join.delete("\n")
    new_array = file_str.split("./spec/fixtures/mp3s/")
    new_array.shift
    new_array
  end

  def import
    self.files.each do |file|
      song = Song.new_by_filename(file)
    end
  end

end
