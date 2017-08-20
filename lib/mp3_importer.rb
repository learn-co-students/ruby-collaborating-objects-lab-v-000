class MP3Importer
  attr_accessor :path
  @@songs = []

  def initialize(path)
    @path = path
  end

  def files
    files = Dir["#{path}/*.mp3"]
    files.collect do |file|
      file.split("mp3s/")[1]
    end
  end

  def import
    files.each do |file|
      @@songs << Song.new_by_filename(file)
    end
    @@songs
  end
end
