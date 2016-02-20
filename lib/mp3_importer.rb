class MP3Importer
  attr_accessor :path
  attr_accessor :file_array
  
  def initialize(filepath)
    @path = filepath
  end

  def files
    @file_array = Dir.entries(@path).select{|file| file.include?(".mp3")}
  end

  def import
    self.files
    @file_array.each{|song| Song.new_by_filename(song)}
  end

end