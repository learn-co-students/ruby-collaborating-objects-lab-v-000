class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    @files = Dir["#{@path}/*.mp3"]
    @files = @files.join("")
    @files = @files.split("#{@path}/")
    @files.shift
    @files
  end
  def import
    files
    @files.each {|file_name| Song.new_by_filename(file_name)
    }


  end
end