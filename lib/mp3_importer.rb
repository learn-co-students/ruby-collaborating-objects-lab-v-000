class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.foreach(@path) do |file|
      @files.push(file) if file.split("")[-1] == "3" #<-- checking for mp3 hacky, i know.  eyes hurt from docs
    end
    @files
  end



  def import
    @files.each do |f|
      Song.new_by_filename(f)
    end
  end

end
