class MP3Importer
  attr_accessor :path

  def initialize(path)
    @files = []
    @path = path
  end

  def files
    Dir["#{@path}/*.mp3"].each do |file|
      new_file = file.sub!("#{@path}/", "")
      @files << new_file
    end
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
