require('pry')
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).reject {|file| !file.end_with?(".mp3")}
  end

  def import
    d = Dir.entries(@path).reject {|file| !file.end_with?(".mp3")}
    d.each do |file|
      s = Song.new_by_filename(file)
    end
  end
end
