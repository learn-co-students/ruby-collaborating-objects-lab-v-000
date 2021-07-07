class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path).reject {|f| f =~ /\.{1,2}$/}
  end

  def import
    files.each {|f| Song.new_by_filename(f)}
  end
end
