class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path).select{|entries| entries.match(/.mp3$/)}
  end

  def import
    files.each do |file|
      song = Song.new_by_filename(file)
    end
  end

end
