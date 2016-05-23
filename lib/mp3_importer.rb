class MP3Importer

#parses directory of files
#sends filenames to song class
# creates library of unique artists

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).grep(/.mp3/)
  end


  def import
    self.files.each do |each_file|
      Song.new_by_filename(each_file)
    end
  end

end