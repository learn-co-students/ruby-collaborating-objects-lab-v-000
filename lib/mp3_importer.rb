class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    files = Dir["#{path}/*.mp3"]
    files.map { |f| File.basename(f) }
  end

  def import
    files.each { |f| Song.new_by_filename(f) }
  end
end
