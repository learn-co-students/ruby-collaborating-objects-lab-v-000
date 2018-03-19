class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end # initialize

  def files
    @files ||= Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{path}/", '') }
  end # files

  def import
    self.files
    @files.each {|file| Song.new_by_filename(file)}
  end # import

end # class MP3Importer
