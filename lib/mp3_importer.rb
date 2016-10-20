class MP3Importer
attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
      Dir.foreach(@path).select do |item|
        item.include?(".mp3")
      end
  end

  def import
      files.detect do |file|
        Song.new_by_filename(file)
      end
 end

end
