require"pry"
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir["#{@path}/**/*.mp3"]
    files.collect {|file| file.gsub("#{@path}/","")
    }
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end

end
