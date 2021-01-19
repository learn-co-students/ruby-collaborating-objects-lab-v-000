class MP3Importer
  attr_accessor :files

  def initialize(file_path)
    @path = file_path
    @files = []
    Dir.foreach(@path) do |x|
      if x.include?("3")
      @files << x
      end
    end
  end

  def path
    @path
  end

  def files
    @files
  end

  def import
    @files.each {|x| Song.new_by_filename(x)}
  end

end
