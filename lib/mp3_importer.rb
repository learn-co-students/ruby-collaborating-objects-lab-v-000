class MP3Importer
  attr_accessor :path, :song

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|f| f.end_with?('mp3')}
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end