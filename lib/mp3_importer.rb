class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    library = []
    Dir.entries(path).each do |filename|
      library << filename
    end
    library.reject {|x| x == "." || x == ".."}
    #OR @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
