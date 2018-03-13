class MP3Importer
  attr_accessor :files
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    self.files = Dir.entries(self.path).reject{|entry| entry =~ /^\.{1,2}$/}
  end

  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end
end
