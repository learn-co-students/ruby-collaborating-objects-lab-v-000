class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect {|song_name| song_name.split("/").last}
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end
end