class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path) do
      @files = Dir.glob("*.mp3")
    end
  end


  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end
end
