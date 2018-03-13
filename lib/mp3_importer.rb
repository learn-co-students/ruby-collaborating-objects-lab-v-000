class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
    @files = self.files
  end

  def files
    name_array = []
    file_array = Dir["#{@path}/*.mp3"]
    file_array.each do |string|
      string_array = string.split("/")
      name_array << string_array[(string_array.size) - 1]
    end
    name_array
  end

  def import
    @files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end
