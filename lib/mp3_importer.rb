class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.glob("#{@path}/*.mp3").collect {|file| file.split('/').last }
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
end