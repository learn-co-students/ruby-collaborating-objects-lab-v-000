class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def import
    self.files.each do |normalname|
      song=Song.new_by_filename(normalname)
    end
  end

  def files
    filenames = Dir["#{self.path}/*.mp3"]
    normalnames=[]
    filenames.each do |filename|
      normalnames << filename.split("/")[4]
    end
    return normalnames
  end

end
