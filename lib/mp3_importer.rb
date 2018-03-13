class MP3Importer
attr_accessor :path,:files

  def initialize(path)
    @path = path
  end

  def files
  @files =  Dir.entries("#{@path}")[2..-1]
  end

  def import
    files.each {|file |Song.new_by_filename(file[0])}
  end

end