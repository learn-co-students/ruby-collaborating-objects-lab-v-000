class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files 
    Dir.entries(path).select do |entry|
      entry.split("").last(3).join == "mp3"
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end