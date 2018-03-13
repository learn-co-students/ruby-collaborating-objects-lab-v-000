class MP3Importer
attr_reader :path

  def initialize(files_path)
    @path = files_path
  end

  def files
  directory = Dir.glob("#{@path}/*.mp3")
  files = directory = directory.map {|file| file.gsub("#{path}/", "") }
  end

  def import
  files.each {|file| Song.new_by_filename(file) }
  end

end
