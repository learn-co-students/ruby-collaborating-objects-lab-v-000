class MP3Importer

  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    Dir.entries(@path).select do |file|
      file.end_with?(".mp3")
    end
  end

  def import
    self.files.collect {|song| Song.new_by_filename(song)}
  end

end
