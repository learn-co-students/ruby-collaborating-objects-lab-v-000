class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
    @file_name = []
  end

  def files
    @file_name = Dir.glob("#{@path}/*.mp3").collect{|file| file.gsub("#{@path}/", "")}
  end

  def import
    self.files.each{|file| Song.new_by_filename(file)}
  end

end
