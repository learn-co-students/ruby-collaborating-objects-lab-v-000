class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect{|filename| filename.gsub("#{path}/", "")}
    #takes a directory, pulls out each line that starts with path and ends in mp3, crops off the path, collects in array as "Artist - Song - genre.mp3"
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
