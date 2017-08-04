class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).reject{|entry| entry =~ /^\./}
  end

  def import
    self.files.each {|song| Song.new_by_filename(song)}
  end

end
