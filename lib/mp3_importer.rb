class MP3Importer

  attr_accessor :path, :files

  def initialize(filepath="")
    @path = filepath
    @files = []
    self.import
  end

  def import
    Dir["#{@path}/*.mp3"].each do |file|
      file.slice! "#{@path}/"
      @files << file
      Song.new_by_filename(file)
    end
    @files
    # @files = Dir["#{@path}/*.mp3"]
    # @files
  end


end
