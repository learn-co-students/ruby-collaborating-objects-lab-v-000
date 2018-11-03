class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
    @filenames = []
  end

  def files
    Dir.new(@path)
  end

  def import(filenames)
    filenames.each do |filename|
      Song.new_by_filename(filename)
    end 
  end
end