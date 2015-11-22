class MP3Importer
  attr_accessor :path

  @@formatted_file = []

  def initialize(path)
    @path = path
  end

  def files
    @@formatted_file = Dir.entries(path).select{ |file| file.end_with?(".mp3") }
  end

  def import
    @@formatted_file.each{ |file| Song.new_by_filename(file) }
  end

end


