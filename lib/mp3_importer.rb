class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = []
    Dir.foreach(path) {|f| @files << f}
    @files = @files[2..-1]
    @files
  end


  def import
    self.files
    @files.each do |i|
      Song.new_by_filename(i)
    end
  end

end