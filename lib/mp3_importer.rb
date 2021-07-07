class MP3Importer
  attr_accessor :path, :files

  def initialize(file_path)
    self.path = file_path
    files = [ ]
  end

  def files
  files = Dir["#{path}/*.mp3"].map{|song| song.split("/").last}
  end

  def import
    files.each{|file| song = Song.new_by_filename(file)}
  end

end
