

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
    self.files
  end

  def files
    filenames = Dir.entries(@path)
    to_split = []
    filenames.each do |file_name|
      if file_name.include?(" - ")
        to_split << file_name
      end
    end
    @files = to_split
    @files
  end

  def import
    i=0
    while i<@files.size
      Song.new_by_filename(@files[i])
      i+=1
    end
  end

end
