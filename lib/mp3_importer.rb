class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect{|file_path| File.basename("#{file_path}")}
  end

  def import
    files.each{|file| Song.new_by_filename(file)}
  end
end
