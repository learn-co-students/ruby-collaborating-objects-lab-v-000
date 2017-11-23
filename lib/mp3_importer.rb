class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    @files = []
  end


  def import(filename)
    filename.each do |file|
      Song.new_by_filename(file)
    end
  end
end
