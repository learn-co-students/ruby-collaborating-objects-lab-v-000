class MP3Importer
  attr_reader :path, :library

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.foreach(self.path) do |item|
      next if item == '.' or item == '..'
      @files << item
    end
    @files
  end

  def import
    files.each {|file| Song.new_by_filename(file) } #changing this from @files.each to files.eeach did the trick
  end
end
