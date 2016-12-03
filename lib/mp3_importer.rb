class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    normalized =[]
    files = Dir["#{@path}/*.mp3"]
    files.each do |filename|
      normalized << File.basename(filename)
    end
    normalized
  end

  def import
    normalized = self.files
    normalized.each {|filename| Song.new_by_filename(filename)}
  end
end
