class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    nopath = Dir.glob(@path + '/*').collect{|filename| filename.split('/')[-1] }
    nopath = nopath.select{|filename| filename[-3..-1] == 'mp3'}
  end

  def import
    files.each {|file| Song.new_by_filename(file)} 
  end

end