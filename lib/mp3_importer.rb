class MP3Importer
  attr_accessor :path, :file_list

  def initialize(path)
    @path = path
  end

  def files
    @file_list = Dir.glob("#{@path.sub /\A\W+/, ""}/*.mp3").collect { |i| i.sub /(\A.+[\/])/, ""}
  end

  def import
    self.files.each { |i| Song.new_by_filename(i)}
  end

end
