class MP3Importer
  attr_accessor :path, :songs
  
  def initialize(path)
    @path = path
    @songs = []
  end

  def files
    Dir.entries(path).select { |x| x if x.end_with?('mp3') }
  end

  def import
     files.each { |file_name| songs << Song.new_by_filename(file_name) }
  end
end



