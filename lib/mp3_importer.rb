class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{self.path}/*.mp3"]
    @files.map! {|file| file.split("./spec/fixtures/mp3s/").join}
  end

  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end
end