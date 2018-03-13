class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    file_list = Dir[@path+'/*.mp3']
    file_list.each do |filename| filename.slice!(@path+'/')
    end
  end
  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
