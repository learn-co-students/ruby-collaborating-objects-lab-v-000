class MP3Importer

  def initialize(filepath)
    @path = filepath
  end

  def path
    @path
  end

  def files
    files = Dir.glob("#{@path}/*.mp3")
    files.map { |f| File.basename(f) }
    # Dir.chdir(@path) do
    #   Dir.glob('*.mp3')
    # end
  end

  def import
    files.each { |file| Song.new_by_filename(file) }
  end
end
