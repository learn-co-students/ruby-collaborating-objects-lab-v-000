class MP3Importer
  attr_reader :path, :files

  def initialize(path)
    @path = path
  end

  def files
  @files = Dir.entries(@path).select {|f| f.include?("mp3")}
  end

  def import
    files.each{ |filename| Song.new_by_filename(filename) }
 end
end
