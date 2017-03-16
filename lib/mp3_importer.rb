class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
      @files = Dir.entries(@path).reject{|entry| entry == "." || entry == ".."}
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end



end
