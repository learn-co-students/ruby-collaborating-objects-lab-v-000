class MP3Importer
  attr_accessor :songs, :path
  @@files = [] 
  def initialize(path)
    @path = path
  end
  def files
    Dir.foreach(@path) do |file|
      if file != "." || file !=".."
        @@files << file
      end
    end
    @@files
  end
  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end

