class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path) do
      @files = Dir.glob("*.mp3")
    end
    @files
  end

  def import
    files.each do |song|
      Song.new_by_filename(song)
    end
  end
end
