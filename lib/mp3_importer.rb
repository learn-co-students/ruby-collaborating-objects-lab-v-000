class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/*"].select {|file| File.file? file}.map{|file| File.basename file}
  end

  def import
    basefiles = Dir["#{@path}/*"].select {|file| File.file? file}.map{|file| File.basename file}
    basefiles.each{ |filename| Song.new_by_filename(filename) }
  end
end
