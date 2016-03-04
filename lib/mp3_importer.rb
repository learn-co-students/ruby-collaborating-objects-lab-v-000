class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path 
  end

  def files
    @files = Dir["#{@path}/*.mp3"].collect{ |filename| filename.split("/").last}
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end